
# Assignment 1 – Introduction to Linux Basic Commands

## What I Did
- Cloned the provided repository and created a correctly named branch.
- Answered all six questions with both **relative** and **absolute** path solutions as required.
- Prepared placeholders and a structure for **screenshots** that demonstrate each command’s result.

## Why I Did It
- To practice and demonstrate command-line proficiency:
  - Navigating with relative (`..`, `.`) and absolute (`/home/...`) paths.
  - Understanding differences between copying a single file vs contents of a directory.
  - Interpreting `ls` color codes via `LS_COLORS` for different file types.

## What I Learned
- Shortcuts for home navigation: `cd`, `cd ~`.
- When to use absolute paths vs relative paths for clarity and portability.
- Copy semantics:
  - `cp file dest/` copies one file.
  - `cp dir/* dest/` copies all non-hidden files in a directory.
  - `cp -a dir/. dest/` copies *everything* including hidden files while preserving attributes.
- Reading color cues in terminal listings (directories, executables, devices/special files).

## How to Reproduce
1. Navigate into the repo and switch to my branch:
   ```bash
   git clone https://github.com/eliekayitare/Introduction_to_linux.git
   cd Introduction_to_linux
   git checkout -b 27019_NSHIMIYIMANA_CYUSA_KHEVEN_assignment1
   ```
2. Run the commands in `Assignment1_answers.md` from the specified starting directories.
3. Save screenshots into the `./screenshots/` folder using the suggested filenames.
4. Commit only to **my branch** and push:
   ```bash
   git add Assignment1_answers.md README.md screenshots/
   git commit -m "Assignment 1 submission"
   git push -u origin 27019_NSHIMIYIMANA_CYUSA_KHEVEN_assignment1
   ```

