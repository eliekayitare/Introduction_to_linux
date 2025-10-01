# Introduction_to_linux
# COSC 8312 - Individual Assignment 2
**Student:** Ndayizeye Steven  
**Student ID / Branch:** 27165_ndayizeye_steven_assignment1  
**Repo:** https://github.com/eliekayitare/Introduction_to_linux.git

## What I did
This repository contains solutions to all assignment questions. Files included:
- `assignment_commands.sh` — exact commands used for each question (run selectively).
- `README.md` — this file.
- `screenshots/` — screenshots of command outputs (Q1.png ... Q17.png).
- `forensics/ log_analysis/ compress_test/ ...` — sample directories created during work.

## Why I did it
To demonstrate competence in Linux filesystem navigation, file manipulation, wildcard and brace usage, `find`, `tar`/compression methods, backups, user/group management, sudo auditing and forensic setup.

## What I learned
- Practical differences between compression algorithms and costs.
- How `find` can combine multiple criteria to locate risky files.
- Importance of consistent line endings and how tools treat them differently.
- Use of `rsync --link-dest` for incremental backups.
- How `sudo`/group assignments impact access and security.

## Challenges & recommendations
- Some operations require root privileges (e.g., creating device files, changing ownership). I noted where `sudo` was required.
- When working with large datasets, prefer streaming tools (`less`, `tac`) to avoid transferring whole files over SSH.
- For production backups, consider deduplicating tools (borg/restic) instead of ad-hoc tar/gzip.

## How to reproduce
1. Clone repo and checkout branch `27165_ndayizeye_steven_assignment1`.
2. Inspect and run relevant parts of `assignment_commands.sh`.
3. Capture screenshots specified in `screenshots/`.

