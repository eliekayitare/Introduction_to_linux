 What I Did
Reasoned and executed Linux commands for all questions, set up structures, captured outputs.

 Why I Did It
To practice advanced Linux file management, navigation, security, backups.

 What I Learned
Efficient wildcards, compression trade-offs, sudo risks, forensic importance.

 Challenges and Recommendations
Challenge: Line endings differences; recommend dos2unix for cross-platform.

Challenge: Find complex queries; recommend man find for details.


1. Investigating a Compromised System.
Directories likely to contain modified configs, malicious binaries, and logs:
-/etc: System configuration files (e.g., /etc/passwd, /etc/shadow). An attacker might modify for persistence (e.g., add users). Evidence: Altered timestamps or unauthorized changes.
-/bin: Essential binaries (e.g., ls, cp). An attacker might replace them with trojans for backdoors. Evidence: Unexpected file sizes or hashes.
-/var: Log files (e.g., /var/log/auth.log). An attacker might delete logs to hide an intrusion. Evidence: Missing entries or unusual access.

Reasoning for all:
- /bin: Essential binaries; attackers replace for malicious execution.
- /etc: Config files; attackers modify for privilege escalation.
- /var: Variable data like logs; attackers erase evidence.
- /usr: Secondary binaries ( /usr/bin); similar to /bin, attackers target non-essential tools.
- /tmp: Temporary files; attackers use for staging malware, as it's writable.
- /opt: Add-on software; attackers hide custom tools here.
- /boot: Boot files (kernel); attackers modify for rootkits.
- /home: User homes; attackers target for user-level persistence (e.g., .ssh keys).


2.mkdir -p ~/projects/{client_work/{web/{frontend,backend,database},mobile/{ios,android}},personal/{experiments,archive},shared/{templates,resources}}

3. Navigate Without Absolute Paths
Starting in ~/projects/client_work/web/frontend

	1. To ~/projects/personal/experiments: `cd ../../../personal/experiments`
  	 Prove: `pwd` (output: /home/vegas/projects/personal/experiments)

	2. To ~/projects/shared/templates: `cd ../../shared/templates`
   	Prove: `pwd` (output: /home/vegas/projects/shared/templates)

	3. Back to start: `cd ../../client_work/web/frontend`
  	 Prove: `pwd` (output: /home/vegas/projects/client_work/web/frontend)

Used cd 3 times, relative paths only.

4.Create Realistic Web Project Structure
mkdir web_project

touch web_project/{index,about,contact}.html web_project/page_{001..012}.html
touch web_project/{main,reset,theme_light,theme_dark,mobile,tablet,desktop,print}.css
touch web_project/{main,util,config,app,helper,setup}_script.js
touch web_project/{a,b,c,d}{1..5}.{bak,tmp,old,save}

To verify: `ls web_project`

5. Use Wildcards for Cluttered Directory
Assume in web_project

	1. Move files ending in numbers: `mv *_[0-9][0-9][0-9].html archive/`

	2. Copy CSS except mobile or tablet: `cp !(mobile|tablet).css desktop/` (with extglob enabled: `shopt -s extglob`)

	3. List files with exactly 3 chars before dot: `ls ???.*`

	4. Files starting with consonant: `ls [b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]*.*`

	5. Extensions with exactly 2 chars: `ls *.??`
6. with Brace Expansion for File Naming
Commands:
`touch log_2024-{01..03}-{01..31}.txt`

`touch {web,api,db}_{dev,stg,prod}.conf`

`touch {A,B,C}{10,11,12}_{input,output}.txt`

To verify: `ls`

7. Line Endings Comparison 
Commands:
-printf "This is a test\nLine2\nLine3\n" > linux.txt

-printf "This is a test\r\nLine2\r\nLine3\r\n" > windows.txt

-diff linux.txt windows.txt #(shows differences due to line endings)

-cmp linux.txt windows.txt #(shows byte differences)

-comm linux.txt windows.txt #(shows lines as different)

Results: diff shows all lines differ; cmp shows byte offsets; comm shows all unique.

Teaches: Cross-platform files must handle line endings (use dos2unix/unix2dos).

8. Security Audit with Find 
Setup:
mkdir -p test_env/{dir1,dir2,dir3,dir4,dir5}

touch test_env/dir1/file{1..5} 
touch -m -d "2 days ago" test_env/dir1/file{1,2} 
touch -m -d "50 days ago" test_env/dir1/file3

touch test_env/dir2/largefile 
dd if=/dev/zero of=test_env/dir2/largefile bs=1k count=10

touch test_env/dir4/.hidden

sudo chown nobody test_env/dir1/file4

touch test_env/dir5/worldwritable
sudo chmod 666 test_env/dir5/worldwritable

Commands:
	1. Files larger than average: `find test_env -type f -size +$(find test_env -type f -printf "%s\n" | awk '{sum+=$0; n++} END {print int(sum/n)}')c`

	2. Modified 72-24 hours: `find test_env -mtime -3 -mtime +1`

	3. Empty or only hidden dirs: `find test_env -type d -empty -o \( -type d -name ".*" -not -empty \)`

	4. World-writable: `find test_env -perm /o=w`

	5. Owned by others: `find test_env -user ! $(whoami) -a -user ! root`

	6. Temporary/backup: `find test_env -name "*~" -o -name "*.bak" -o -name "*.tmp"`


9. Analyze Large Log 
	Setup: seq 1 300 > large_log.txt (add "error" on line 200)

	1. Middle 50 lines: sed -n '126,175p' large_log.txt

	2. Last occurrence with context: grep -n -m1 -B5 "error" large_log.txt | tail -n 6

	3. Timing: 
	time cat large_log.txt > /dev/null 
	time less large_log.txt > /dev/null 
	time tail large_log.txt > /dev/null

	4. Extract errors with numbers: grep -n "error" large_log.txt

	5. Less vs cat: Less paginates, loads incrementally; cat loads all, bad for bandwidth.

10. Automate with Find -exec 
	1. Permissions: find . -type f -not -perm /a=x -exec chmod 644 {} \;
	 find . -type f -perm /a=x -exec chmod 755 {} \;

	2. Disk space old files: find . -mtime +30 -exec du -c {} + | tail -1

	3. Backup conf: find . -name "*.conf" -exec cp {} {}.backup \;

	4. Remove temp: find . -name "*tmp" -atime +7 -print preview then -exec rm {} \;

11. Compression Analysis
	Setup: mkdir -p compressed/{text,media}

	seq 1 10000 > compressed/text/big_text.txt

	dd if=/dev/urandom of=compressed/media/image.jpg bs=1M count=5

Commands:
	time tar czf compressed/text.tar.gz compressed/text (repeat for bz2, xz, zip)

	du -h compressed/text.*

Same for media.

	Results: For text, xz best ratio, gzip fastest. For media, little compression, gzip fastest.

	Recommend: gzip for speed in backups, xz for space if time allows.


12. Inherited Archives
	 mkdir -p test_archive && touch test_archive/{file1.txt,file2.conf}
	tar -czf archive.tar.gz test_archive/
	tar -tf archive.tar.gz

	1. Examine: tar -tf archive.tar.gz 
	   zip -l archive.zip

	2. Extract pattern: tar -xf archive.tar.gz --wildcards "*conf"

	3. Update: tar -uf archive.tar newfile
	  zip -u archive.zip newfile

	4. Corrupted: tar -tf corrupted.tar (shows errors)

Merge: tar -xf archive1.tar
	unzip archive2.zip
	tar -cf new.tar *

13. Backup Rotation 
 mkdir -p test_data && touch test_data/file1.txt
Daily: tar -cpf backups/daily/inc_$(date +%Y-%m-%d).tar --listed-incremental=snapshot.file data

mkdir -p backups/weekly
Weekly: tar -cpf backups/weekly/full_$(date +%Y-%W).tar --listed-incremental=snapshot.file data
mkdir -p backups/monthly
Monthly: tar -cpf backups/monthly/full_$(date +%Y-%m).tar --listed-incremental=snapshot.file data

Cleanup: find backups/daily -mtime +7 -delete (weekly +30, monthly +365)

Verify: tar --test-label backups/daily/inc_2025-09-28.tar

Naming prevents conflicts, incremental saves space.

showing: ls backups

14. User Context Analysis 
Commands: whoami 
	  id 
	  cat /etc/passwd

Create testuser: sudo useradd ishimwe

groups groups ishimwe

System users have UID <1000, no home/shell or /bin/false.

Security: If regular user has system groups, could access restricted files, escalate privileges.


15. Group Membership Issues
id (effective groups)
sudo useradd ishimwe

 getent group ishimwe

Change group: usermod -aG groupname ishimwe (but requires logout for effect.)
su - ishimwe
ls
id
 su - vegas
Groups for logs: adm, for web: www-data, admin: sudo.

Least privilege: Assign only necessary groups to limit access.


16. Sudo Audit
sudo -l (permissions)

sudo -i (root shell with env)

sudo su - (root login shell)

su - vegas (switch user)

last (for logs.)

Concerns: * ALL = ALL allows too much; suggest specific commands.


17. Bonus: Forensic Analysis
Setup:
mkdir -p forensics/{reg,dir,sym,hard,dev}

touch forensics/reg/file

ln forensics/reg/file forensics/hard/hardlink

ln -s forensics/reg/file forensics/sym/symlink

sudo mknod forensics/dev/block b 8 0

chmod +t forensics/dir

chmod u+s forensics/reg/file

chmod g+s forensics/reg/file

 sudo chown vegas forensics/reg/file

Analysis: ls -l forensics
 	 stat forensics/reg/file
	 getfacl forensics/dir

Investigator uses to see modifications, links for hiding, permissions for escalation.

Artifacts: Unusual timestamps, setuid files, unexpected owners indicate compromise.





