
# Introduction_to_linux
## what i did
- clone the repository
- created myown branch
- created files and directories
- ran basic linux commands
## why i did it
- to practice basic linux commands and understand file navigation
- I cloned so that i can work without affecting main project
- i created my own branch to allows to make the changes without affecting theo main
## what I learned
- how to navigate directories
- how to use different commands

Q5. differece between Q3 ad Q4
   Q3 copies the entire p3 folder while Q4 copies only the content
Q6.yellow represets executale files or directories i ls --color output
   blue represent directories
 
hereWeAre should appear blue because its a directory and they are blue by default
# Assignment2
# Forensic Lab — README

X

This lab simulates a forensic investigation environment with different file types, permissions, ownerships, and archives.

## What I did

* Created a test folder `forensic_lab` with:

  * Regular files, large files, and hidden files.
  * Directories with different permissions, including sticky bit.
  * Symbolic links and hard links.
  * Files with SUID and SGID permissions.
  * Files owned by root, system, and user accounts.
  * Archives using tar (gz, bz2, xz) and zip.
  * Simulated suspicious files and cron jobs for persistence.
* Set different timestamps to simulate tampering.

## Why I did it

* To practice identifying different file types, permissions, and ownership patterns.
* To learn how to detect suspicious activity such as SUID files, hidden files, and odd cron jobs.
* To understand how archives and hashes are used for preserving evidence.

## What I learned

* How to inspect file types, permissions, links, and ownership using `ls`, `stat`, `file`, and `find`.
* How to detect potential security risks: unusual SUID/SGID files, hidden files, suspicious cron jobs.
* Importance of hashing files for integrity verification.
* How timestamps can indicate tampering.
* How to safely handle and examine archives without executing them.
* How to document investigation steps and maintain a proper forensic workflow.

