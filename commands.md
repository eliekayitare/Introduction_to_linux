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