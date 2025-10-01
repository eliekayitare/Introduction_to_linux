#!/bin/bash
# Assignment 2 – COSC 8312
# Student: Ndayizeye Steven
# Branch: 27165_ndayizeye_steven_assignment1
# Note: Run sections separately (Q1..Q17), not the whole script blindly.

#####################################
# Q1 – System Directories
#####################################
echo "=== Q1 Directories ==="
ls -ld /bin /etc /var /usr /tmp /opt /boot /home
ls -l /etc | head -n 10
ls -l /var/log | head -n 10

#####################################
# Q2 – Create Project Structure
#####################################
echo "=== Q2 Project Structure ==="
mkdir -p ~/projects/{company_alpha/{webapp,api,db},company_beta/{webapp,api,db}}
for d in ~/projects/company_alpha/* ~/projects/company_beta/*; do
  touch "$d/README.md"
done
tree ~/projects || ls -R ~/projects

#####################################
# Q3 – Navigation Challenge
#####################################
echo "=== Q3 Navigation ==="
mkdir -p ~/projects/client_work/web/frontend
mkdir -p ~/projects/personal/experiments
mkdir -p ~/projects/shared/templates
cd ~/projects/client_work/web/frontend || exit
pwd
cd ../../../personal/experiments && pwd
cd ../../shared/templates && pwd
cd ../../../client_work/web/frontend && pwd

#####################################
# Q4 – Web Project Structure
#####################################
echo "=== Q4 Web Project Structure ==="
mkdir -p ~/web_project/{html,css,js,backup}
cd ~/web_project || exit
touch html/index.html html/about.html html/contact.html
for i in $(seq -w 1 12); do touch "html/page_${i}.html"; done
touch css/{main.css,reset.css,theme_light.css,theme_dark.css,mobile.css,tablet.css,desktop.css,print.css}
touch js/{script_main.js,script_helper.js,util_dom.js,util_net.js,config_app.js,config_routes.js}
for i in {1..5}; do touch backup/a_file${i}.bak backup/b_file${i}.bak backup/c_file${i}.bak backup/d_file${i}.bak; done
ls -1 html | wc -l
ls -1 css | wc -l
ls -1 js | wc -l
ls -1 backup | wc -l

#####################################
# Q5 – Wildcards
#####################################
echo "=== Q5 Wildcards ==="
mkdir -p archive css/desktop
shopt -s extglob
for f in html/*[0-9].*; do mv "$f" archive/; done
for f in css/*.css; do case "$f" in *mobile*|*tablet*) ;; *) cp "$f" css/desktop/ ;; esac; done
ls -1 | grep -E '^.{3}\.[^.]+$'
ls -1 | grep -E '^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]'
ls -1 | grep -E '\.[^.]{2}$'

#####################################
# Q6 – Brace Expansion
#####################################
echo "=== Q6 Brace Expansion ==="
mkdir -p ~/q1_logs ~/configs ~/tests
cd ~/q1_logs || exit
for d in $(seq -w 1 31); do touch "log_2024-01-${d}.txt"; done
for d in $(seq -w 1 29); do touch "log_2024-02-${d}.txt"; done
for d in $(seq -w 1 31); do touch "log_2024-03-${d}.txt"; done
cd ~/configs || exit
touch {web,api,db}.{dev,staging,prod}.conf
cd ~/tests || exit
touch {A,B,C}{10,11,12}.{input,output}
ls ~/q1_logs | head
ls ~/configs
ls ~/tests

#####################################
# Q7 – Line Endings
#####################################
echo "=== Q7 Line Endings ==="
mkdir -p ~/lineending_test && cd ~/lineending_test || exit
printf "Line1\nLine2\nLine3\n" > lf_file.txt
printf "Line1\r\nLine2\r\nLine3\r\n" > crlf_file.txt
diff -u lf_file.txt crlf_file.txt || true
cmp lf_file.txt crlf_file.txt || true
od -c lf_file.txt | head
od -c crlf_file.txt | head
sort lf_file.txt > lf_sorted.txt
sort crlf_file.txt > crlf_sorted.txt
comm lf_sorted.txt crlf_sorted.txt

#####################################
# Q8 – Find Commands
#####################################
echo "=== Q8 Find Commands ==="
mkdir -p ~/find_test && cd ~/find_test || exit
fallocate -l 1K small1.txt
fallocate -l 5K mid1.txt
fallocate -l 100K big1.txt
touch -d "now - 1 day" recent.txt
touch -d "now - 2 days" mid_48h.txt
touch -d "now - 4 days" older.txt
mkdir emptydir hiddenonly
touch hiddenonly/.hiddenfile
touch public.log && chmod 777 public.log
touch temp~ file.bak tmpfile.tmp .~lockfile
ln -s big1.txt symlink_big
avg=$(find . -maxdepth 1 -type f -printf "%s\n" | awk '{sum+=$1; n++} END{if(n>0) print int(sum/n); else print 0}')
echo "Average size = $avg bytes"
find . -maxdepth 1 -type f -size +"${avg}c" -ls
find . -type f -mmin -4320 ! -mmin -1440 -print
find . -type d -empty -print
find . -type f -perm -o=w -ls
find . -type f \( -name '*~' -o -name '*.bak' -o -name '*.tmp' -o -name '*.swp' -o -name '.~*' \) -ls

#####################################
# Q9 – Log Analysis
#####################################
echo "=== Q9 Log Analysis ==="
mkdir -p ~/log_analysis && cd ~/log_analysis || exit
for i in $(seq 1 250); do printf "%03d: %s\n" "$i" "$(date +%Y-%m-%d_%H:%M:%S) - message $i" >> biglog.txt; done
for i in 20 45 100 199 240; do sed -i "${i}s/$/ ERROR: something failed/" biglog.txt; done
total=$(wc -l < biglog.txt)
start=$(( (total/2) - 25 ))
sed -n "${start},$((start+49))p" biglog.txt
lnum=$(grep -n "ERROR" biglog.txt | tail -n1 | cut -d: -f1)
sed -n "$((lnum-5)),$((lnum+5))p" biglog.txt
time cat biglog.txt > /dev/null
grep -n "ERROR" biglog.txt

#####################################
# Q10 – find -exec
#####################################
echo "=== Q10 find -exec ==="
cd ~/web_project || exit
find . -type f ! -perm /111 -exec chmod 644 {} \;
find . -type f -perm /111 -exec chmod 755 {} \;
find . -type f -mtime +30 -exec du -ch {} + | tail -n1
find . -type f -name '*.conf' -exec echo cp {} {}.backup \;

#####################################
# Q11 – Compression
#####################################
echo "=== Q11 Compression ==="
mkdir -p ~/compress_test/{text_files,compressed_files}
cd ~/compress_test || exit
for i in $(seq 1 5); do base64 /dev/urandom | head -c 100000 > text_files/text_${i}.txt; done
for i in $(seq 1 2); do head -c 500000 /dev/urandom > compressed_files/file${i}.jpg; done
time tar -czf archive_gzip.tar.gz -C text_files .
time tar -cjf archive_bzip2.tar.bz2 -C text_files .
time tar -cJf archive_xz.tar.xz -C text_files .
time zip -r archive_zip.zip text_files

#####################################
# Q12 – Archives
#####################################
echo "=== Q12 Archives ==="
tar -tvf archive_gzip.tar.gz | head
unzip -l archive_zip.zip
tar -xvf archive_gzip.tar.gz --wildcards '*.txt'
zip archive_zip.zip newfile.txt

#####################################
# Q13 – Backup Rotation (demo only)
#####################################
echo "=== Q13 Backup Rotation (demo) ==="
mkdir -p ~/backups/daily ~/backups/weekly ~/backups/monthly
tar -czf ~/backups/weekly/weekly_full_$(date +%F).tar.gz ~/web_project

#####################################
# Q14 – Users and Groups
#####################################
echo "=== Q14 Users and Groups ==="
whoami
id
awk -F: '($3 < 1000){print "System:",$1,$3,$6}' /etc/passwd | head
awk -F: '($3 >= 1000){print "Regular:",$1,$3,$6}' /etc/passwd | head

#####################################
# Q15 – Group Propagation
#####################################
echo "=== Q15 Group Propagation ==="
id
getent group | grep $(whoami)

#####################################
# Q16 – Sudo & su
#####################################
echo "=== Q16 Sudo & su ==="
sudo -l
# sudo -i, sudo su, and su - should be tested manually in terminal
sudo -u root whoami

#####################################
# Q17 – Forensics
#####################################
echo "=== Q17 Forensics ==="
mkdir -p ~/forensics/{files,permissions,archives}
cd ~/forensics/files || exit
echo "evidence" > regular.txt
ln regular.txt hardlink_regular.txt
ln -s regular.txt symlink_regular.txt
mkfifo named_pipe
cd ../permissions || exit
touch setuid_exec && chmod 4755 setuid_exec
touch setgid_exec && chmod 2755 setgid_exec
mkdir sticky_dir && chmod 1777 sticky_dir
cd ../archives || exit
tar -czf texts.tar.gz ../files
zip -r texts.zip ../files
ls -lR ~/forensics
find ~/forensics -perm /6000 -ls
