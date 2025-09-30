# Assignment 2 – Linux Practice (COSC 8312)  

**Name:** Niyonsenga Jimmy  
**ID:** 27188  

---

## 📌 Introduction  
This repository contains my solutions for **Assignment 2 – Individual** in the *Introduction to Linux* course.  

Each task includes:  
- The commands or explanation used.  
- Key insights or outcomes.  

---

## ✅ Questions & Solutions  

### **Q1. Linux Directories and Roles**  
- Explained the purpose of `/bin`, `/etc`, `/var`, `/usr`, `/tmp`, `/opt`, `/boot`, `/home`.  
- Pointed out which areas are often targeted by attackers (configs, binaries, logs).  

---

### **Q2. Creating a Project Directory Structure**  
- Built a nested folder hierarchy using minimal commands.  

---

### **Q3. Navigation with Restricted `cd` Usage**  
- Moved across directories without exceeding three `cd` commands.  

---

### **Q4. Building a Web Project Skeleton**  
- Generated: 15 HTML files, 8 CSS files, 6 JavaScript files, and 20 backups using efficient techniques.  

---

### **Q5. Wildcard Operations**  
- Demonstrated how to:  
  - Move numbered files to `archive/`.  
  - Copy CSS files except mobile/tablet ones to `desktop/`.  
  - List files with exactly 3-character names before extension.  
  - Match filenames starting with consonants.  
  - Identify files with 2-character extensions.  

---

### **Q6. Using Brace Expansion**  
- Produced:  
  - Logs for Q1 2024.  
  - Config files for three services.  
  - Test files spanning A–C and 10–12.  

---

### **Q7. Linux vs Windows Line Endings**  
- Created and compared LF vs CRLF formatted files.  
- Used `diff`, `cmp`, and `comm` to spot differences.  
- Highlighted cross-platform compatibility concerns.  

---

### **Q8. Security Auditing with `find`**  
- Located:  
  - Files larger than average.  
  - Files modified in last 72h but not 24h.  
  - Empty/hidden-only directories.  
  - World-writable files.  
  - Files owned by others.  
  - Backup/temp-like files.  

---

### **Q9. Log File Processing**  
- Created a log with 200+ lines.  
- Extracted middle 50 lines, found the last match of a word with context, and timed search tools.  
- Concluded why `less` is more efficient than `cat`.  

---

### **Q10. Automating File Maintenance**  
- Used `find -exec` to:  
  - Adjust file permissions.  
  - Check disk space usage.  
  - Backup configuration files.  
  - Safely remove temporary files.  

---

### **Q11. Compression Techniques Compared**  
- Tested `tar+gzip`, `tar+bzip2`, `tar+xz`, and `zip`.  
- Compared their efficiency for compressed vs text data.  
- Suggested the best method for automated backups.  

---

### **Q12. Archive Operations**  
- Viewed archive contents without extraction.  
- Extracted selected patterns.  
- Updated and merged archives.  
- Dealt with corruption issues.  

---

### **Q13. Backup Rotation Strategy**  
- Designed a scheme: daily incremental, weekly full, monthly archive.  
- Ensured metadata preservation and integrity checks.  

---

### **Q14. User and Group Analysis**  
- Compared user groups.  
- Studied `/etc/passwd` for differences between system and normal users.  
- Outlined related security implications.  

---

### **Q15. Group Membership & Privileges**  
- Showed how group changes require relogin.  
- Identified groups related to logging, web server, and admin.  
- Emphasized least-privilege practices.  

---

### **Q16. Auditing Sudo Usage**  
- Distinguished between `sudo -i`, `sudo su`, and `su -`.  
- Executed commands as different users.  
- Analyzed system logs for login patterns.  
- Proposed improvements for sudo configuration.  

---

## 📚 Key Takeaways  
- Wildcards and brace expansion simplify file management.  
- Permissions, groups, and ownership are central to security.  
- Compression tools vary in effectiveness depending on data type.  
- Proper backup and archive strategies ensure reliability.  
- `sudo` usage requires careful auditing for system safety.  

---

## ⚡ Challenges Faced  
- Memorizing exact wildcard and brace patterns.  
- Writing complex `find` queries.  
- Differentiating subtle variations in sudo commands.  

---

## 💡 Recommendations  
- Test dangerous operations with `-exec echo` before execution.  
- Choose compression tools based on file type.  
- Always apply the principle of least privilege.  

---

## 📂 Folder Layout  

