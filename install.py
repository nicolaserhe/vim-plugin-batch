#!/usr/bin/env python3
import yaml
import os
import shutil
import subprocess
import threading
from concurrent.futures import ThreadPoolExecutor
from queue import Queue
from time import sleep

from rich.console import Console, Group
from rich.text import Text
from rich.live import Live
from rich.progress import Progress, BarColumn, TextColumn

HOME_DIR = os.path.expanduser('~')
PLUG_DIR = os.path.join(HOME_DIR, ".vim/pack")
HELP_DIR = os.path.join(HOME_DIR, ".vim")
VIM_FILE = ".vimrc"
HELP_FILE = "help.md"
CONFIG_FILE = "plugins.yaml"
console = Console()

def load_plugins(config_path):
    if not os.path.isfile(config_path):
        console.print(f"[red]Configuration file '{config_path}' does not exist![/]")
        return []

    try:
        with open(config_path, "r", encoding="utf-8") as f:
            data = yaml.safe_load(f)
    except Exception as e:
        console.print(f"[red]Failed to load or parse YAML: {e}[/]")
        return []

    if not isinstance(data, dict):
        console.print(f"[red]Invalid plugin config format: expecting dict at top level.[/]")
        return []

    plugins = []
    for pack, sections in data.items():
        if not isinstance(sections, dict):
            console.print(f"[yellow]Warning: pack '{pack}' sections not dict, skipped.[/]")
            continue
        for section, repos in sections.items():
            if not repos:
                continue
            if not isinstance(repos, list):
                console.print(f"[yellow]Warning: section '{pack}/{section}' is not a list, skipped.[/]")
                continue
            for repo in repos:
                if isinstance(repo, str):
                    plugins.append((repo, pack, section))
                else:
                    console.print(f"[yellow]Warning: invalid repo entry under '{pack}/{section}': {repo}, skipped.[/]")
    return plugins

def clone_plugin(repo, pack, section, max_retries=2):
    plugin = repo.split('/')[-1]
    url = f"https://github.com/{repo}.git"
    dest = os.path.join(PLUG_DIR, pack, section, plugin)
    os.makedirs(os.path.dirname(dest), exist_ok=True)

    env = os.environ.copy()
    env["GIT_TERMINAL_PROMPT"] = "0"

    for attempt in range(max_retries + 1):
        try:
            subprocess.run(
                ["git", "clone", "--quiet", "--depth=1", url, dest],
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                env=env,
            )
            return plugin, True
        except subprocess.CalledProcessError:
            if attempt < max_retries:
                sleep(1)
            else:
                return plugin, False

def main():
    if os.path.exists(PLUG_DIR):
        shutil.rmtree(PLUG_DIR)
    os.makedirs(PLUG_DIR, exist_ok=True)

    vimrc_path = os.path.join(os.getcwd(), VIM_FILE)
    shutil.copy(vimrc_path, HOME_DIR)
    help_path = os.path.join(os.getcwd(), HELP_FILE)
    shutil.copy(help_path, HOME_DIR)

    plugin_repos = load_plugins(CONFIG_FILE)
    if not plugin_repos:
        console.print("[red]Plugin list is empty, exit.[/]")
        return

    total = len(plugin_repos)
    console.print(f"[bold cyan]Installing plugins, please wait...[/]\n")

    progress = Progress(
        "[progress.description]{task.description}",
        BarColumn(
        complete_style="blue",
        finished_style="green",
        pulse_style="blue",
        ),
        TextColumn("({task.completed}/{task.total})"),
        console=console,
    )
    task = progress.add_task("Installing plugins", total=total)

    plugin_statuses = {}
    failed_plugins = []
    success_count = 0
    fail_count = 0
    status_lock = threading.Lock()
    status_queue = Queue()

    def worker(repo_pack_section):
        nonlocal success_count, fail_count
        repo, pack, section = repo_pack_section
        plugin = repo.split('/')[-1]

        with status_lock:
            plugin_statuses[plugin] = Text(f"+ {plugin}: Installing...", style="blue")

        plugin_name, success = clone_plugin(repo, pack, section)

        with status_lock:
            if success:
                plugin_statuses[plugin_name] = Text(f"- {plugin_name}: Done", style="green")
                success_count += 1
            else:
                plugin_statuses[plugin_name] = Text(f"x {plugin_name}: Failed after retries", style="red")
                fail_count += 1
                failed_plugins.append(plugin_name)
            status_queue.put(1)

    with Live(console=console, refresh_per_second=10) as live:
        with ThreadPoolExecutor(max_workers=8) as executor:
            futures = [executor.submit(worker, item) for item in plugin_repos]

            completed = 0
            while completed < total:
                try:
                    status_queue.get(timeout=0.1)
                    completed += 1
                    progress.update(task, advance=1)
                except:
                    pass
                with status_lock:
                    live.update(Group(*plugin_statuses.values(), progress.get_renderable()))

    console.print(f"\n[bold green]Finished![/bold green] [green]{success_count} succeeded[/green], [red]{fail_count} failed[/red].")

    if failed_plugins:
        console.print("[red]Failed plugins:[/red]")
        for plugin in failed_plugins:
            console.print(f"  • [red]{plugin}[/red]")

if __name__ == "__main__":
    main()

