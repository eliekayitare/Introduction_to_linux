# Linux Systems & Security Assignment  

##  What I Did  
- Explored critical Linux directories (`/etc`, `/bin`, `/usr`, `/usr`, `/var`, `/tmp`, `/opt`, `/boot`, `/home`) and analyzed their role in system security.  
- Created structured project directories and files (HTML, CSS, JS, backup files) using efficient shell commands like brace expansion.  
- Practiced file manipulation with `find`, `cp`, `mv`, and wildcards to manage large sets of files.  
- Simulated cross-platform issues by creating files with Linux (LF) and Windows (CRLF) line endings, then compared them using tools (`diff`, `cmp`, `comm`).  
- Built test environments to practice forensic file analysis (permissions, SUID/SGID, world-writable files, timestamps, hidden files).  
- Learned archive creation, compression algorithms, and backup strategies (incremental, full, monthly).  
- Examined user/group management, sudo configurations, and log analysis for auditing access.  

##  Why I Did It  
This work was designed to:  
- Develop practical Linux administration skills.  
- Understand system security risks and forensic investigation methods.  
- Gain hands-on practice with command-line tools to manage files, users, and backups efficiently.  
- Simulate real scenarios of system compromise and learn how to detect them.  

##  What I Learned  
- The importance of `/etc`, `/var/log`, and SUID files in detecting intrusions.  
- How wildcards, `find`, and brace expansion save time when handling large projects.  
- Cross-platform pitfalls (CRLF vs LF) and why normalization is essential in collaboration.  
- That archives/compression methods vary in speed vs size efficiency (gzip = balance, xz = best compression, zip = portability).  
- How to safely preview and test potentially destructive commands (`find -ok`, `echo` before `-exec`).  
- Practical backup strategies combining daily incrementals, weekly full backups, and monthly archives.  

##  Challenges & Recommendations  
- **Challenge:** Remembering all `find` flags and options; some combinations are tricky.  
  **Recommendation:** Always preview with `find … -print` before running `-exec`.  
- **Challenge:** Device files and ownership tests require root access in a VM.  
  **Recommendation:** Use a dedicated VM or container to experiment safely.  
- **Challenge:** Handling different file permissions and special bits (SUID, SGID, sticky).  
  **Recommendation:** Use `ls -l`, `stat`, and `getfacl` regularly to confirm results.  
- **Challenge:** Cross-platform file issues (line endings).  
  **Recommendation:** Use tools like `dos2unix` or Git’s `core.autocrlf` for consistency.  
