# Assignment 2 - Linux File System, Permissions, and Forensics

## 📌 What I Did

In this assignment, I completed 17 Linux-based tasks that covered: -
Investigating critical system directories for forensic analysis. -
Creating complex project structures using `mkdir` with brace
expansion. - Navigating directories efficiently with limited `cd`
usage. - Organizing files with wildcards, expansions, and find
commands. - Comparing Linux vs Windows file formats (line endings). -
Performing log analysis and compression experiments. - Setting up user
and group permissions, sudo escalation, and forensic environments.

Each task was solved using appropriate Linux commands, with explanations
provided for **why** the command was used and its forensic/security
implications.

------------------------------------------------------------------------

## 🎯 Why I Did It

The purpose of these tasks was to: - Strengthen practical Linux
administration skills. - Learn advanced file system navigation and
manipulation techniques. - Understand forensic investigation practices
for compromised systems. - Apply principles of **least privilege**,
**auditability**, and **automation** in Linux environments. - Gain
hands-on experience with real-world tasks (log analysis, backup
strategies, archive management).

------------------------------------------------------------------------

## 📖 What I Learned

Through this assignment, I gained the following insights:

1.  **System Forensics**
    -   How attackers might exploit `/etc`, `/bin`, `/tmp`, `/boot`, and
        how investigators should examine them.
    -   Importance of timestamps, ownership, and special permissions in
        detecting anomalies.
2.  **Linux File Operations**
    -   Advanced use of `mkdir`, wildcards, brace expansion, and `find`
        to automate bulk operations.
    -   How to manipulate and organize large numbers of files
        efficiently.
3.  **Cross-Platform Issues**
    -   Windows and Linux handle line endings differently (`CRLF` vs
        `LF`), which causes subtle issues in scripts and logs.
4.  **Archiving & Compression**
    -   Tradeoffs between gzip, bzip2, and xz (speed vs ratio).\
    -   Why already-compressed files should not be recompressed.
5.  **User Management & Security**
    -   Difference between system and normal users in `/etc/passwd`.\
    -   Risks of misconfigured group memberships.\
    -   How to properly audit sudo privileges.
6.  **Automation & Backups**
    -   Automating cleanup of temporary files and backup rotation using
        `find` + cron jobs.\
    -   Naming conventions to prevent conflicts.

------------------------------------------------------------------------

## ⚡ Challenges Faced

-   Remembering exact options for commands like `find`, `tar`, and
    `zip`.
-   Ensuring that brace expansions created exactly the required
    structures (sometimes too many files!).
-   Handling differences in file formats when moving between Linux and
    Windows.
-   Understanding the subtle differences between `sudo -i`, `sudo su`,
    and `su -`.

------------------------------------------------------------------------

## ✅ Recommendations

-   **For Security:** Always verify permissions (`ls -l`, `stat`) when
    doing forensic work. Look for SUID, SGID, and world-writable files.\
-   **For Backups:** Use `tar.gz` for general purpose backups (fast +
    good compression), `xz` only when space is critical.\
-   **For Logs:** Use `less` instead of `cat` on remote servers to save
    bandwidth.\
-   **For Automation:** Combine `find` with scripts for cleanup,
    auditing, and monitoring.\
-   **For Permissions:** Apply **least privilege** -- only give
    users/groups what they need. Audit `/etc/sudoers` regularly.

------------------------------------------------------------------------

## 📌 Conclusion

This assignment gave me hands-on exposure to real-world Linux
administration, file system management, and forensic analysis.\
It reinforced **security best practices** (permissions, sudo, logs) and
**efficiency skills** (brace expansion, wildcards, automation).\
The skills gained are directly applicable to **system administration,
DevOps, and cybersecurity forensics**.
