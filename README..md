# Linux System Administration & Security Tasks

##  What I Did

I worked through 17 structured Linux administration, security, and troubleshooting exercises. These covered:

* File and directory management with wildcards, brace expansion, and `find`.
* File format differences (Linux vs Windows line endings).
* Log analysis and efficient file viewing.
* Backup creation, rotation strategies, and archive management.
* User and group management, access permissions, and privilege escalation audits.
* Forensic environment setup with different file types, permissions, and ownerships.

Each step included **commands with verification outputs** to ensure clarity and reproducibility.

---

##  Why I Did It

The goal was to:

* Strengthen practical Linux administration skills.
* Understand security implications of permissions, ownership, and group assignments.
* Learn efficient backup and archive handling for production environments.
* Explore forensic methods for analyzing potential compromises.

---

##  What I Learned

* **Wildcards & Brace Expansion**: Efficiently manage complex file structures.
* **File Compatibility**: Different line endings (CRLF vs LF) cause subtle issues across platforms.
* **Find & Exec**: Automating file maintenance tasks safely.
* **Archiving & Compression**: Different algorithms (gzip, bzip2, xz, zip) work better on different content types.
* **Backup Strategies**: Importance of incremental vs full backups with metadata preservation.
* **User/Group Management**: Propagation of group changes and principle of least privilege.
* **Sudo & Privileges**: Risks of overly permissive sudo rights.
* **Forensics**: Special bits (sticky, setuid, setgid) and file types provide evidence of system usage and potential misuse.

---

##  Challenges and Recommendations

### Challenges

* Handling very large files efficiently during analysis.
* Remembering which compression method works best for specific content.
* Testing privilege escalation scenarios safely without harming the system.
* Creating realistic forensic test environments (device files require root).

### Recommendations

* Always **preview dangerous operations** (e.g., `find … -exec rm`) with `-print` before execution.
* Use `less` instead of `cat` for large files, especially over SSH.
* Automate backup strategies with **cron jobs** and test restores regularly.
* Enforce the **principle of least privilege** in group and sudo assignments.
* For forensic analysis, log everything and maintain an unaltered copy of evidence.

---

 This set of tasks built a strong foundation in **Linux system administration, security auditing, and forensic readiness**.
