# Assignment 2 – Introduction to Linux  
**Name:** Mutoni Ange  
**ID:** 27581  
**Course:** COSC 8312  

---

## 🔹 What I Did  
I completed all tasks in the assignment step by step:  
- Mapped out Linux directories to explain forensic investigation points.  
- Used `mkdir -p` with braces to build project structures in a single command.  
- Navigated between directories using relative paths and minimal `cd`.  
- Built a web project folder with HTML, CSS, JS, and backup files using efficient patterns.  
- Applied **wildcards** to move, copy, and list files by pattern.  
- Created batch log/config/test files with brace expansion.  
- Demonstrated cross-platform issues with **line endings** (LF vs CRLF).  
- Ran a **security audit** with `find` to detect world-writable, oversized, outdated, or suspicious files.  
- Created and analyzed a **200+ line log file** with `sed`, `grep`, `less`, and `time`.  
- Automated file maintenance with `find -exec` for permissions, cleanup, and backups.  
- Compared **archive methods** (`tar+gzip`, `tar+bzip2`, `tar+xz`, `zip`) for text vs media.  
- Learned to manage existing archives, merge formats, and recover from corruption.  
- Planned a **backup rotation strategy** with incremental, full, and monthly archives.  
- Investigated **user/group differences** via `/etc/passwd`, and explored group propagation issues.  
- Compared privilege escalation methods (`sudo -i`, `sudo su`, `su -`) and analyzed system logs.  
- Built a forensic environment with diverse files, permissions, and ownerships.  

---

## 🔹 Why I Did It  
The main goal was to develop hands-on Linux administration and forensics skills:  
- Identifying malicious persistence and suspicious files,  
- Practicing efficient command-line operations,  
- Understanding system security implications of groups, sudo, and permissions,  
- Learning real-world backup and log management strategies.  

---

## 🔹 What I Learned  
- How **attackers abuse /tmp and /etc** for persistence.  
- `mkdir -p` with braces makes complex structures trivial.  
- Wildcards are powerful for **bulk file operations**.  
- **Cross-platform file issues** come from hidden characters like `\r`.  
- `less` is superior to `cat` for log inspection in SSH.  
- **gzip vs bzip2 vs xz**: choosing speed or compression based on content type.  
- Naming and cleanup conventions make **backups reliable**.  
- How to **audit groups and sudo** to avoid privilege escalation.  

---

## 🔹 Challenges & Recommendations  
- Large log navigation was initially overwhelming; `less` solved this.  
- Some `find` commands were complex when combining multiple filters.  
- Compression was slow with `xz` on big text datasets.  
- I recommend automating `find`-based audits and **enforcing strict sudo policies** to reduce risks.  

---
