## Question 1
Commands used:  
```powershell
cd / (change directory into the root directory)  
ls (listing all the directories inside the root folder) 
```
Output description: Lists root directories including bin, etc, var, usr, tmp, opt, boot, home.
Explanation and reasoning: 

/bin: Contains essential binaries (e.g., ls, cp) that could be replaced with malicious ones by an attacker to backdoor common commands. 
/etc: Contains system configuration files (e.g., /etc/passwd, /etc/shadow) that an attacker might modify to add users or change settings. 
/var: Contains log files (e.g., /var/log/auth.log) that might show intrusion evidence like failed logins or sudo usage.  
/usr: Contains user binaries and libraries; an attacker might replace non-essential binaries here, but less critical than /bin. 
/tmp: Temporary files; attackers often place exploits here as it's world-writable, but not for configs orlogs.  
/opt: Optional software; might contain third-party binaries that could be maliciously replaced, but not core system ones.  
/boot: Bootloader files (e.g., kernel); an attacker might modify for persistence, but not typical for configs or logs.  
/home: User home directories; might contain user-specific configs or evidence of compromise in user files, but not system-wide.  

Most likely: /etc for configs, /bin for binaries, /var for logs.  
![screenshotForQ1](./screenshots/Screenshot%202025-09-29%20172333.png)

## Question 2   

Commands used (minimum, using -p for parents):   

```powershell

mkdir -p ~/projects/{client_work/{web/{frontend,backend,database},mobile/{ios,android}},personal/{experiments,archive},shared/{templates,resources}}  
```
Output description: No output if successful; use tree ~/projects to verify the tree structure matching the diagram.  
This works even if parents exist because of -p. One command total.

![creationOfFolders](./screenshots/Q2.png)
---
![showingFolders](./screenshots/Q2B.png)

## Question 3

Commands used :

```powershell
cd ../../../../personal/experiments
pwd  # Proves: /home/user/projects/personal/experiments
cd ../../shared/templates
pwd  # Proves: /home/user/projects/shared/templates
cd ../../client_work/web/frontend
pwd  # Proves: /home/user/projects/client_work/web/frontend (back to start)
```
![Q3](./screenshots/Q3.png)
In the screenshot provided some of the codes failed, so in total it was only 2 cds

## Question 4

Commands used :
The touch command creates files.
```powershell
touch {index,about,contact}.html page_{001..012}.html
touch {main,reset,theme_light,theme_dark,mobile,tablet,desktop,print}.css
touch {main_script,util_script,config_script,helper_script,app_script,lib_script}.js  # Variations with 'script', 'util', 'config'
touch {a1,a2,a3,a4,a5}.bak {b1,b2,b3,b4,b5}.txt {c1,c2,c3,c4,c5}.log {d1,d2,d3,d4,d5}.zip  # 5 each starting with a,b,c,d, mixed extensions
```
![Q4](./screenshots/Q4.png)

## Question 5 

Commands used :

```powershell
mkdir archive desktop # Creating the folders archive and desktop
mv page_*[0-9].html archive/  # Move files like page_001.html (ending in numbers before extension); pattern: *[0-9].* but specified to HTML for precision
cp *.css desktop/ && rm desktop/*{mobile,tablet}*.css  # Copy all CSS, then remove those containing 'mobile' or 'tablet'
ls ???.*  # List files with exactly 3 chars before the dot (e.g., abc.txt); if no match, outputs error or nothing
ls [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]*  # Files starting with consonant (not aeiouAEIOU)
ls *.??  # Identify files with exactly 2-char extensions (e.g., *.js)
```
![Q5](./screenshots/Q5.png)

## Question 6

Commands used :

```powershell
touch log_2024-{01..03}-{01..31}.txt  # Logs for Jan-Mar 2024 (handles non-31 days manually if needed, but efficient)
touch {dev,staging,prod}_{web,api,db}.conf  # Configs for environments x services
touch {A,B,C}{10..12}_{input,output}.txt  # Test files A10_input.txt etc.
```
![Q6](./screenshots/Q6.png)

## Question 7

```powershell
echo -e "Line1\nLine2\nLine3" > linux.conf  # Linux LF
echo -e "Line1\r\nLine2\r\nLine3" > windows.conf  # Windows CRLF
diff linux.conf windows.conf  # Shows differences due to endings
cmp linux.conf windows.conf  # Reports byte where they differ
comm linux.conf windows.conf  # Shows unique/common, but mangled due to endings
```
Output description: diff shows all lines differ; cmp shows first differing byte; comm shows all in columns 1 and 2.
Lesson: Cross-platform compatibility requires consistent line endings; tools like dos2unix fix this, as Windows CRLF can break Linux scripts.

![Q7](./screenshots/Q7.png)

## Question 8

```powershell
mkdir test_env
cd test_env
touch file{1..10} hidden.{1..5} largefile smallfile
dd if=/dev/zero of=largefile bs=1M count=10  # 10MB
touch -m -t $(date -d '-50 hours' +%Y%m%d%H%M) file{1..3}  # Modified 50h ago
mkdir empty_dir hidden_only_dir
touch hidden_only_dir/.hidden
chmod o+w world_writable
sudo chown nobody other_owned  # Assume sudo available
touch temp~ backup.bak

Find Commands

find . -type f -size +$(find . -type f -printf '%s\n' | awk '{sum+=$1; n++} END {print int(sum/n)}')c  # Larger than avg size
find . -type f -mtime -3 -a ! -mtime -1  # Modified last 72h but not 24h
find . -type d \( -empty -o \( ! -name . -prune -exec sh -c 'ls -A "$0" | grep -qv "^\." && exit 1 || exit 0' {} \; \) \)  # Empty or only hidden
find . -perm -o=w  # World-writable
find . -not -user $USER -not -user root  # Owned by others
find . \( -name "*~" -o -name "*.bak" \)  # Temp/backup
```
![Q8](./screenshots/Q8.png)

## Question 9

```powershell
ls -l big.log
wc -l big.log
seq 1 300 > big.log
sed -i '50i error' big.log  # Insert "error" at line 50
sed -i '150i error' big.log  # Insert "error" at line 150
sed -i '250i error' big.log  # Insert "error" at line 250
grep -n "error" big.log

head -n 175 big.log | tail -n 50
xpected Output: Displays lines 126 to 175 (e.g., numbers 126 to 175).
Explanation: head -n 175 takes the first 175 lines, and tail -n 50 takes the last 50 of those, centering around the middle.

grep -n -A5 "error" big.log | tail -n6

-n adds line numbers, -A5 shows 5 lines after each match, and tail -n6 takes the last 6 lines to capture the last "error" (line 250) and its 5 following lines (251-255).

time cat big.log > /dev/null
time less big.log
time head big.log > /dev/null

cat dumps the entire file (timed to /dev/null to avoid display).
less loads interactively (press q to exit and see time).
head shows only the first part (timed to /dev/null).
```
![Q9](./screenshots/Q9B.png)
![Q9A](./screenshots/Q9C.png)
![Q9B](./screenshots/Q9D.png)
![Q9C](./screenshots/Q9E.png)

## Question 10

Commands:
```powershell
touch file1.txt file2.conf temp_old.tmp temp_recent.tmp script.sh old_file.txt
chmod +x script.sh  # Make script.sh executable (755)
touch -a -t $(date -d '-40 days' +%Y%m%d%H%M) temp_old.tmp  # Not accessed recently
touch -a -t $(date -d '-10 days' +%Y%m%d%H%M) temp_recent.tmp  # Accessed recently
touch -m -t $(date -d '-40 days' +%Y%m%d%H%M) old_file.txt  # Modified >30 days ago
dd if=/dev/zero of=old_file.txt bs=1M count=5  # Add 5MB size for space calc
ls -l
find . -type f ! -perm /a=x -exec chmod 644 {} \; -o -perm /a=x -exec chmod 755 {} \;
find . -type f -mtime +30 -exec du -b {} + | awk '{sum+=$1} END {print sum " bytes"}'
find . -name "*.conf" -exec cp {} {}.backup \;
find . -name "temp*.tmp" -atime +30 -exec echo "Would remove {}" \;
find . -name "temp*.tmp" -atime +30 -exec rm {} \;
```
![Q10](./screenshots/Q10%20A.png)
![Q10A](./screenshots/Q10B.png)
![Q10B](./screenshots/Q10C.png)
![Q10C](./screenshots/Q10D.png)

## Question 11

```powershell
mkdir text_dir
for i in {1..10}; do seq 1 10000 > text_dir/text_file$i.txt; done  # Create 10 large text files (~50KB each, total ~500KB)
du -sh text_dir compressed_dir
ls -l text_dir compressed_dir
original_size=$(du -b text_dir | awk '{print $1}')
time tar czf text.tar.gz text_dir  # tar + gzip
gz_size=$(du -b text.tar.gz | awk '{print $1}')
echo "GZIP Ratio: $(echo "scale=2; $original_size / $gz_size" | bc)"

time tar cjf text.tar.bz2 text_dir  # tar + bzip2
bz2_size=$(du -b text.tar.bz2 | awk '{print $1}')
echo "BZIP2 Ratio: $(echo "scale=2; $original_size / $bz2_size" | bc)"

time tar cJf text.tar.xz text_dir  # tar + xz
xz_size=$(du -b text.tar.xz | awk '{print $1}')
echo "XZ Ratio: $(echo "scale=2; $original_size / $xz_size" | bc)"

time zip -r text.zip text_dir  # zip
zip_size=$(du -b text.zip | awk '{print $1}')
echo "ZIP Ratio: $(echo "scale=2; $original_size / $zip_size" | bc)"
original_size=$(du -b compressed_dir | awk '{print $1}')
time tar czf compressed.tar.gz compressed_dir  # tar + gzip
gz_size=$(du -b compressed.tar.gz | awk '{print $1}')
echo "GZIP Ratio: $(echo "scale=2; $original_size / $gz_size" | bc)"

time tar cjf compressed.tar.bz2 compressed_dir  # tar + bzip2
bz2_size=$(du -b compressed.tar.bz2 | awk '{print $1}')
echo "BZIP2 Ratio: $(echo "scale=2; $original_size / $bz2_size" | bc)"

time tar cJf compressed.tar.xz compressed_dir  # tar + xz
xz_size=$(du -b compressed.tar.xz | awk '{print $1}')
echo "XZ Ratio: $(echo "scale=2; $original_size / $xz_size" | bc)"

time zip -r compressed.zip compressed_dir  # zip
zip_size=$(du -b compressed.zip | awk '{print $1}')
echo "ZIP Ratio: $(echo "scale=2; $original_size / $zip_size" | bc)"
```
![Q11](./screenshots/Q11.png)
![Q11C](./screenshots/Q10B.png)
![Q11B](./screenshots/Q10C.png)
![Q11C](./screenshots/Q10D.png)

## Question 12

```powershell
tar czf test.tar.gz somefiles
zip test.zip somefiles
echo corrupt > corrupt.tar.gz  # Simulate corrupt
tar tzf test.tar.gz  # Examine without extract
zip -l test.zip
tar xzf test.tar.gz --wildcards "*.txt"  # Extract pattern
zip -u test.zip newfile  # Update
tar tzf corrupt.tar.gz || echo "Corrupt"  # Handle
unzip -p test.zip | tar czf new.tar.gz -; tar xzf test.tar.gz -C temp; zip -r new.zip temp  # Merge example: pipe/extract to new
t/l lists contents; x extracts matches; u adds; error on corrupt.
```
![q12](./screenshots/Q12.png)
![q12a](./screenshots/Q12A.png)
![q12b](./screenshots/Q12B.png)
![q12c](./screenshots/Q12C.png)

## Question 13

```powershell
rsync -a --delete source/ daily_inc/  # Incremental daily, preserves metadata
tar czf backup_daily_$(date +%Y-%m-%d).tar.gz daily_inc/  # Archive daily
# Weekly: if Monday, tar czf weekly_$(date +%Y-%W).tar.gz source/
# Monthly: if 1st, tar czf monthly_$(date +%Y-%m).tar.gz source/
find . -name "daily_*" -mtime +7 -delete  # Cleanup old daily
tar tzf backup_daily_*.tar.gz  # Verify integrity (or md5sum)
Prevents conflicts via date stamps; restore: tar xzf specific.tar.gz. Metadata preserved with -a/-p.
```
![q13](./screenshots/q13.png)
![q13a](./screenshots/q13a.png)

## Question 14

Commands:

```powershell
id  # Current user groups
sudo useradd testuser; sudo groupadd testgroup; sudo usermod -aG testgroup testuser
id testuser  # Compare groups
grep -E '^(root|bin|daemon|sys|adm|nobody|[a-z]+):' /etc/passwd  # System vs regular (system UID <1000, no home/shell or /bin/false)

id shows uid, gid, groups; grep shows system users have low UID, /usr/sbin/nologin shell.

Implications: If regular user has system groups (e.g., adm), could read logs, escalate privileges, violate least privilege.
```
![q14](./screenshots/q14.png)
![q14a](./screenshots/q14b.png)

## Question 15

```powershell
groups  # Configured
id -Gn  # Effective
usermod -aG adm $USER  # Add to group
groups  # Still old until logout
newgrp adm  # Or re-login
groups  # Now updated
# Logs: adm group
# Web: www-data/apache
# Admin: sudo/wheel

Output: groups shows change after re-login/newgrp.
Principle: Assign minimal groups needed; e.g., don't add to sudo unless necessary, reduces attack surface.
```
![Q15](./screenshots/Q15.png)

## Question 16

```powershell
sudo -l  # Permissions
sudo -i  # Root shell with env
sudo su  # Root but current env
su -  # Root login shell
sudo lastlog | grep sudo  # Or /var/log/auth.log for patterns

Output: -l lists allowed cmds; differences: -i cleans env, su - loads root profile.
Concerns: ALL=(ALL) ALL too permissive, allows anything. Improve: specific cmds, e.g., /usr/bin/apt, use groups, audit logs.
```
![Q16](./screenshots/Q16.png)
![Q16B](./screenshots/Q16B.png)

## Bonnus Question 17

```powershell
mkdir forensic
cd forensic
touch regular_file
mkdir subdir
ln -s regular_file sym_link
ln regular_file hard_link
mknod device c 1 3  # Char device if possible
chmod +t subdir  # Sticky
chmod u+s regular_file  # Setuid
chmod g+s subdir  # Setgid
sudo chown root regular_file
tar czf archive.gz regular_file
tar cjf archive.bz2 regular_file
zip archive.zip regular_file

ls -l  # Types (d dir, l sym, - reg, c device), perms, ownership
stat regular_file  # Details timestamps
getfacl *  # ACLs if set
find . -links +1  # Hard links
ls -ld subdir  # Special bits (t,s)
tar tzf archive.gz  # Archives

Investigator use: ls/stat show modifications; unusual setuid/world-write indicate backdoors; timestamp inconsistencies suggest tampering; ownership changes point to escalation.
Artifacts for compromise: Unexpected setuid binaries, hidden files in /tmp, modified /etc/passwd timestamps, logs with failed su.
```
![Q17](./screenshots/Q17.png)
![Q17B](./screenshots/Q17B.png)
![Q17A](./screenshots/Q17A.png)
