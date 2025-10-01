Project Overview
This repository contains comprehensive solutions to all questions outlined in Assignment 2, which focuses on Linux file system operations, permissions, and forensic analysis. The work demonstrates proficiency in command-line navigation, automation, and security auditing within a Linux environment.

📁 Included Files and Structure
assignment_commands.sh – A shell script containing the exact commands used to solve each question. Commands are modular and can be executed selectively.

README.md – This documentation file, summarizing the assignment objectives, methodology, and outcomes.

screenshots/ – A directory containing visual evidence of command execution (Q1.png through Q17.png).

forensics/, log_analysis/, compress_test/, etc. – Sample directories created during task execution to simulate real-world scenarios.

🎯 Purpose of the Assignment
The assignment was designed to:

Validate competence in Linux file system navigation and manipulation.

Apply advanced techniques such as brace expansion, wildcard usage, and find command logic.

Explore compression strategies and backup rotation methods.

Audit user and group permissions, including sudo configurations.

Simulate forensic environments for compromised system analysis.

📖 Key Learnings
🔍 Technical Insights
Compression Algorithms: Gained practical understanding of trade-offs between gzip, bzip2, and xz in terms of speed and compression ratio.

File Discovery: Learned to combine multiple find criteria to locate files with potential security risks.

Line Endings: Identified compatibility issues between Linux (LF) and Windows (CRLF) formats and their impact on scripts and logs.

Incremental Backups: Applied rsync --link-dest for efficient backup rotation.

Access Control: Explored how sudo privileges and group memberships affect system access and security posture.

⚡ Challenges and Recommendations
🧩 Challenges Encountered
Certain operations (e.g., creating device files, changing ownership) required elevated privileges; sudo usage was documented accordingly.

Managing large datasets over SSH highlighted the need for bandwidth-efficient tools such as less and tac.

Ensuring brace expansions generated precise file structures without redundancy.

✅ Recommendations
Security Auditing: Use ls -l, stat, and find to verify permissions and detect anomalies such as SUID/SGID bits and world-writable files.

Backup Strategy: For production environments, consider deduplication tools like borg or restic over ad-hoc tar/gzip methods.

Log Management: Prefer streaming tools (less, grep, awk) for remote log analysis to minimize data transfer.

Privilege Management: Enforce least privilege principles and regularly audit /etc/sudoers and group memberships.

🔁 Reproducibility Instructions
To reproduce the assignment environment and validate the solutions:

Clone the repository:

bash
git clone https://github.com/eliekayitare/Introduction_to_linux.git
cd Introduction_to_linux
git checkout 25512_ndahindurwa_gael_assignment2
Review and execute commands:

Open assignment_commands.sh and run relevant sections as needed.

Verify outputs:

Refer to screenshots in the screenshots/ directory for visual confirmation of results.
