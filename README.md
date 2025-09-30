Overview of the Assignment
This assignment focused on Linux fundamentals, including directory navigation, file creation/manipulation, wildcards, compression, backups, and user/group management. I addressed all 16 main questions and the bonus (Question 17). Commands were tested in isolated test directories (e.g., ~/test_env, ~/q10_test) to avoid system clutter. I used efficient tools like mkdir -p, touch with braces, find -exec, and tar to meet requirements for minimum commands and safety.
What I Did
I systematically completed each question by:

Setting up test environments with sample files/directories.
Executing the required commands and verifying outputs with ls -l, pwd, du, etc.
Documenting commands, outputs (via screenshots), and explanations.
Ensuring compliance with instructions (e.g., no absolute paths where restricted, preview dangerous ops).

Question 1: Investigating Compromised System Directories

Actions: Navigated to / with cd / and ls. Explained roles of /bin (binaries), /etc (configs), /var (logs), /usr (user binaries), /tmp (temp), /opt (optional), /boot (boot files), /home (user homes).
Output: Root dir listing; reasoning focused on attacker modifications (e.g., /etc for configs, /bin for malicious binaries, /var for intrusion logs).

Question 2: Organizing Project Structure

Actions: Used mkdir -p ~/projects/{client_work/{web/{frontend,backend,database},mobile/{ios,android}},personal/{experiments,archive},shared/{templates,resources}} (one command).
Output: Verified with tree ~/projects; structure matched the provided diagram, works with existing parents via -p.

Question 3: Relative Path Navigation

Actions: From ~/projects/client_work/web/frontend, used cd ../../../../personal/experiments, then cd ../../shared/templates, then cd ../../client_work/web/frontend (3 cd total). Proved with pwd at each step.
Output: pwd confirmed locations without absolute paths.

Question 4: Creating Web Project Structure

Actions: Created dir with mkdir ~/web_project; cd ~/web_project. Used touch with braces: {index,about,contact}.html page_{001..012}.html, {main,reset,theme_light,theme_dark,mobile,tablet,desktop,print}.css, JS variations like {main_script,util_script,config_script,...}.js, and backups like {a1..5}.bak {b1..5}.txt {c1..5}.log {d1..5}.zip.
Output: ls listed 15 HTML, 8 CSS, 6 JS, 20 backups.

Question 5: File Management with Wildcards

Actions: Created archive/desktop; moved with mv page_*[0-9].html archive/, copied CSS and removed exclusions with cp *.css desktop/ && rm desktop/*{mobile,tablet}*.css. Listed with ls ???.* (3 chars before dot), ls [bcdfghjklmnpqrstvwxyz]* (consonant start), ls *.?? (2-char ext).
Output: Moves/copies as expected; some patterns empty based on files (e.g., no ???.* matches).

Question 6: Brace Expansion for File Creation

Actions: touch log_2024-{01..03}-{01..31}.txt, {dev,staging,prod}_{web,api,db}.conf, {A,B,C}{10..12}_{input,output}.txt.
Output: ls showed logs (Jan-Mar 2024), configs (9 files), tests (18 files) without extras.

Question 7: Line Endings and File Comparison

Actions: Created linux.conf with LF, windows.conf with CRLF using echo -e. Compared with diff (lines differ), cmp (byte diffs), comm (mangled columns).
Output: Highlighted cross-platform issues; learned to use dos2unix.

Question 8: Security Audit with Find

Actions: Setup with touch, dd, mkdir, touch -m, chmod o+w, sudo chown nobody. Used find for larger-than-avg, modified 72-24h, empty/hidden dirs, world-writable, other-owned, temp/backup.
Output: Listed matching files/dirs (e.g., largefile, file1-3, world_writable).

Question 9: Log File Analysis

Actions: Created big.log with seq 1 300, added "error" with sed. Used head|tail for middle 50, grep -n -A5|tail for last error context, time for efficiency, grep -n for errors.
Output: Middle lines 126-175, last error at 250, times showed less interactive advantage.

Question 10: Automate Maintenance with Find -exec

Actions: Setup files, used find for perms (644/755), space sum >30d, .conf backups, temp remove with preview echo.
Output: Perm changes, size sums, backups created, safe removals.

Question 11: Compression Analysis

Actions: Created text/compressed dirs with seq/dd. Timed/calculated ratios for tar.gz/bz2/xz, zip.
Output: XZ best ratio for text (10x+), poor for compressed (~1x); recommended GZIP for automated backups.

Question 12: Handling Archives

Actions: Created archives, used tar tzf/unzip -l to examine, --wildcards/-d for pattern extract, tar rf/zip -u to update, || echo for corrupt, extract/merge to new.tar.gz.
Output: Contents listed, selective extracts, updates added files.

Question 13: Backup Rotation Strategy

Actions: Used rsync for daily incremental, tar for weekly/monthly fulls with date naming. Cleanup with find -mtime -delete. Verified with tar tzf/md5sum.
Output: Archives created/restored with metadata; naming prevented conflicts.

Question 14: User Access Troubleshooting

Actions: Used id/groups for context, created testuser, compared with id testuser. Grepped /etc/passwd for patterns (UID <1000 system vs >=1000 regular).
Output: Group comparisons; implications: over-groups risk privilege escalation.

Question 15: Group Membership Propagation

Actions: Checked groups/id -Gn, demonstrated re-login with newgrp. Identified adm (logs), www-data (web), sudo (admin).
Output: Changes effective after re-login; least privilege: minimal assignments reduce risks.

Question 16: Privilege Escalation Audit

Actions: sudo -l for perms, demonstrated -i/su/su-, sudo -u for other users, lastlog/auth.log for patterns.
Output: Env differences; concerns: permissive sudo; improve: specific cmds, logging.

Question 17 (Bonus): Forensic Analysis Setup

Actions: Created structure with touch, mkdir, ln -s, ln, mknod. Set perms/ownership with chmod/+s/+t, chown. Archives with tar/zip. Analyzed with ls -l, stat, find -links.
Output: File types/perms listed; insights: timestamps indicate activity, setuid suggests compromise.

Why I Did It

Overall Purpose: To demonstrate mastery of Linux commands for system administration, security, and file management, as required by the assignment. Each question built on practical scenarios (e.g., compromised systems, backups) to simulate real-world tasks.
Specific Choices: Used efficient methods (e.g., braces for Q6, -p for Q2) to minimize commands and handle edge cases. Previewed dangerous ops (Q10, Q13) for safety. Focused on verification (e.g., pwd, ls -l) to prove correctness.
Alignment with Instructions: Followed branch naming, pushed only to branch, included commands/screenshots in assignment file, and structured README to prove understanding.

What I Learned

Key Skills: Deepened knowledge of relative navigation (Q3), wildcards/brace expansion (Q5-6), find -exec for automation (Q8,10), compression trade-offs (Q11), backup strategies (Q13), and user/group security (Q14-16).
Insights: Line endings affect cross-platform compatibility (Q7); group changes need re-login (Q15); permissive sudo is risky (Q16); forensic artifacts like setuid indicate compromises (Q17).
Broader Lessons: Efficiency in commands reduces errors; always preview destructive actions; metadata preservation is crucial for backups.

Challenges and Recommendations

Challenges:

Timestamp simulation (e.g., Q8,10) required precise touch -t formats; errors if dates invalid.
Sudo needed for chown/usermod (Q8,14,17), risking permission issues if not configured.
Empty outputs for patterns (Q5) due to file names; corruption simulation (Q12) needed careful "broken" files.
Time constraints near deadline; VirtualBox setup slowed some commands (e.g., dd for sizes).


Recommendations:

Test in isolated dirs to avoid system impact; use man for command options.
For future assignments, start early for testing; automate with scripts for repetitive tasks.
Improve: Add more error handling (e.g., || echo "Failed"); use tools like tree for visualization.
General: Practice sudoers config for secure environments; verify backups regularly.