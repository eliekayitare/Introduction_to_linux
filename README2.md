 Linux Practical Assignment - README

 Names:NIYOMUFASHA Olive
Student ID: 26033

This repository contains solutions and examples for a comprehensive Linux practical assignment covering system navigation, file management, security, and backup strategies.

 1. System Directories Analysis

| Directory | Likely Content                      | Reasoning                                 |
| --------- | ----------------------------------- | ----------------------------------------- |
| /bin      | Essential binaries                  | Could be replaced with malicious binaries |
| /etc      | Configuration files                 | Attackers may modify system configs       |
| /var      | Logs, spool, cache                  | Logs show intrusion evidence              |
| /usr      | User utilities, additional binaries | Less critical, mostly read-only           |
| /tmp      | Temporary files                     | Potential malware staging area            |
| /opt      | Optional software                   | Third-party apps may be exploited         |
| /boot     | Kernel and boot files               | Rarely modified by attackers              |
| /home     | User files                          | Could contain user data or scripts        |
 2. Project Structure Creation

 Used `mkdir -p` with brace expansion to create nested directories efficiently.

 3. Navigation Practice

 Used relative paths and `cd` commands (max 3) to navigate between project directories, confirming locations with `pwd` at each step.

4. Web Project Structure

Created 15 HTML, 8 CSS, 6 JS files, and 20 backup files using loops and brace expansion for efficiency.

5. File Organization Using Wildcards

 Moved numeric files to `archive/`
 Copied selected CSS to `desktop/`
 Listed files with 3-character names, consonant-starting files, and files with 2-character extensions using shell patterns.

6. Batch Processing Patterns

 Generated daily log files (Q1 2024), config files for multiple environments, and test files with combined letters/numbers/suffixes using brace expansion.

 7. Cross-platform File Comparison

 Created files with Linux (LF) and Windows (CRLF) endings
 Compared using `diff`, `cmp`, `comm` to highlight differences; teaches line-ending awareness.

 8. Advanced File Search

Used `find` to locate large files, recent files, empty directories, world-writable files, files owned by non-standard users, and temporary/backup files.

9. Log Analysis

Created a 200+ line log
 Displayed middle 50 lines, searched last occurrence with context, extracted error lines with numbers, and compared viewing efficiency using `cat`, `less`, `tail`.

 10. File Maintenance Automation

 Used `find -exec` to change permissions, compute disk usage, backup `.conf` files, and safely remove old temporary files.

 11. Compression Analysis

 Created archives using `tar+gzip`, `tar+bzip2`, `tar+xz`, and `zip`.
 Analyzed compression ratio and speed for text vs already-compressed files to recommend efficient backup strategy.

12. Archive Management

 Safely examined contents, extracted specific patterns, updated archives, and handled corrupted files.
 Demonstrated merging multiple archive types into a new archive.

 13. Backup Rotation Strategy

 Daily incrementals, weekly fulls, monthly long-term archives
 Used timestamps in filenames for conflict-free restoration
 Verified integrity via checksums.
14-16. User Access & Privilege Audit

 Analyzed groups, sudo permissions, and system user vs regular user differences
 Demonstrated effective vs configured groups, required re-login
 Explained least privilege principle
 Compared `sudo -i`, `sudo su`, `su -`, and running commands as other users
 Examined login patterns and highlighted risks of overly permissive sudo configurations.

---

NB For full commands, scripts, and examples, refer to the previous assignment solutions in individual files and scripts within this repository.
