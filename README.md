Assignment 2 - Linux System Administration
Student: IRADUKUNDA Oscar
Student ID: 26281


### What I Did

### Question 1: File System Analysis

Analyzed Linux directory structure for security investigation
Found /bin has essential programs like awk.exe, base64.exe
Found /etc has config files like bash.bashrc, hosts, gitconfig
Found /tmp has temporary files and PDFs
Found /usr has system programs and libraries
Note: Using Git Bash on Windows, so some directories like /var, /boot don't exist


### Question 2: Directory Structure Creation

Created organized project structure using mkdir -p
Built client-work (web/mobile), personal (experiment/archive), shared (templates/resources) folders
Used brace expansion for efficient directory creation

### Question 3: Navigation Practice
Successfully navigated between project folders using relative paths only
Went frontend → personal/experiment → shared/templates → back to frontend
Used only 3 cd commands total as required


### Question 4: Web Project Structure
Created 15 HTML files (index, about, contact, page_001-012)
Created 8 CSS files (main, reset, themes, responsive, print)
Created 6 JavaScript files with script/util/config patterns
Created 20 backup files with mixed extensions (5 each starting with a,b,c,d)


### Question 5: Wildcards and File Operations


Moved numbered files to archive folder using *[0-9].html
Copied CSS files (except mobile/tablet) to desktop folder
Used wildcard patterns to find files by character count and starting letters
Found files with 2-character extensions using *.??


### Question 6: Brace Expansion

Created 91 log files for Q1 2024 using {01..31} patterns
Created 9 config files for 3 environments × 3 services
Created 18 test files combining letters A-C, numbers 10-12, input/output

### Question 7: File Comparison

Created files with Linux (LF) and Windows (CRLF) line endings
Compared using diff, cmp, and comm tools
Learned: Different tools show different aspects of file differences
diff shows content differences, cmp shows byte-level differences, comm treats different line endings as different lines

### Question 8: Security Audit with Find


Created test files with different sizes, permissions, ages
Found files larger than average size
Found files with world-writable permissions (security risk)
Found temporary and backup files using name patterns
Used multiple find criteria for comprehensive security analysis

### Question 9: Large Log File Analysis


Created 250-line log file with INFO, ERROR, WARNING messages
Displayed middle 50 lines using sed -n '100,150p'
Found last ERROR occurrence with context using grep -A5 -B5
Timed different file viewing tools (cat, head, tail)
Extracted error patterns while preserving line numbers


### Question 10: File Maintenance Automation

Used find -exec to change file permissions automatically
Set regular files to 644, kept executables as 755
Created backup copies of config files with .backup extension
Calculated disk space for old files
Previewed dangerous operations before execution


### Question 11: Compression Analysis

Created archives using tar+gzip, tar+bzip2, tar+xz, zip
Tested on text files (compress well) vs binary files (don't compress much)
Found: Text files compress significantly, binary files barely compress
Recommendation: Use gzip for speed, xz for maximum compression, consider file types

### Question 12: Archive Management

Safely examined archive contents without extraction
Extracted specific file patterns from different archive types
Updated existing archives without recreating them
Handled corrupted archives gracefully
Merged multiple archive types into single archive


### Question 13: Backup Strategy

Designed rotation with daily/weekly/monthly backups
Created naming convention with timestamps
Included metadata preservation (permissions, ownership)
Added automatic cleanup of old backups
Implemented integrity verification with checksums


### Question 14: User Analysis
Analyzed current user context and system configuration
Compared system users (UID < 1000) vs regular users (UID ≥ 1000)
Examined /etc/passwd entries for security patterns
Security insight: System users should have restricted shells and different group memberships


### Question 15: Group Membership
Investigated group membership propagation
Checked effective vs configured groups
Identified groups for system logs, web files, admin functions
Learned: Group changes require re-login, principle of least privilege is important


#### Question 16: Privilege Escalation
Documented sudo permissions and restrictions
Explained differences between sudo -i, sudo su, su -
Security concerns: Overly permissive sudo, shared admin accounts
Recommendations: Regular audits, least privilege, sudo logging


### Bonus Question 17: Forensic Analysis

Created comprehensive test environment with different file types
Set up various permission combinations including special bits
Created collection of archives with different compression methods
Documented commands for forensic investigation
Forensic value: File types, permissions, timestamps, and links reveal system activity
Why I Did It
This assignment taught practical Linux system administration skills needed for:

