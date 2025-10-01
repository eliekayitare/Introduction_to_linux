# Introduction_to_linux

##Overview

This project focused on practicing Linux filesystem navigation, file manipulation, automation with find, compression, archives, permissions, and system auditing.
We also explored security-related concepts like log analysis, privilege escalation, and forensic investigation of compromised systems.

The work was done on Ubuntu 20.04 inside VirtualBox 7.0.26 (macOS Catalina host), with VirtualBox Guest Additions enabled for shared folder access and clipboard support.

##What We Did

Investigated critical Linux directories (/bin, /etc, /var, /usr, /tmp, /opt, /boot, /home) to understand attacker targets.

Created directory trees and navigated with relative paths.

Built a realistic web project structure (HTML, CSS, JS, backups).

Used wildcards and regex for file management tasks.

Practiced brace expansion for efficient file generation.

Compared Linux vs Windows line endings with diff, cmp, comm.

Designed test environments for find with criteria like size, age, permissions.

Analyzed a large log file with sed, grep, nl, and less.

Automated file maintenance using find -exec.

Compared compression methods (gzip, bzip2, xz, zip).

Worked with archives: inspecting, updating, repairing, merging.

Designed a backup rotation strategy (daily incremental, weekly full, monthly).

Explored user/group management, sudo permissions, and least privilege.

Created a forensic lab with symbolic links, SUID/SGID files, sticky bits, and archives.

##Why We Did It

To simulate real-world system administration and security tasks.

To understand how attackers might target Linux systems.

To practice efficient command-line techniques.

To gain hands-on experience with backup strategies and file auditing.

To build confidence in automation and scripting for system maintenance.

What We Learned

Filesystem security: which directories attackers modify, and how to detect it.

Wildcards and regex: powerful tools for file management and searching.

Line ending differences: importance for cross-platform compatibility.

find and exec: automating tasks like cleanup, backup, permission fixes.

Compression trade-offs: xz gives best ratio, gzip best speed, pre-compressed files do not benefit.

Backup strategies: incremental plus full rotation saves space and supports recovery.

User and groups: group membership propagation requires re-login; least privilege is critical.

Forensic techniques: checking SUID/SGID, timestamps, and archive analysis to detect anomalies.

##Challenges

VirtualBox Guest Additions: Initially failed to mount, required manual ISO attachment and installation.

Shared folders permissions: Needed to add user to vboxsf group.

Large file analysis: Demonstrated why less is superior to cat over SSH.

Updating compressed archives: Learned that tar.gz cannot be updated directly (must recreate or use uncompressed tar).

##Recommendations

Always test destructive find commands with -print before -exec.

Use rsync --link-dest for efficient incremental backups.

For cross-platform projects, enforce consistent line endings with tools like dos2unix.

Limit sudo privileges to principle of least privilege — no broad NOPASSWD rules.

Monitor /var/log/ regularly and set up log forwarding to secure servers.

In VirtualBox, enable Guest Additions early to avoid file transfer issues.
