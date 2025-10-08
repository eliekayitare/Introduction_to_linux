# Mini Project 1 – User & Group Management (Group 14)

## Overview

This README documents the exact steps I, Steven, performed for Mini Project 1 on AWS EC2, including system setup, user and group creation, directory permissions, ACLs, SGID inheritance, sudo privileges, and backups.

## AWS Setup

* **Instance ID:** i-04474e0a16e1898c7
* **Public IP:** 13.62.127.219
* **Private IP:** 172.31.24.69
* **Region:** Europe (Stockholm)
* **AMI:** Amazon Linux 2023
* **Instance Type:** t3.micro
* **Users used to connect:** ec2-user → teamlead

### Actions performed

* Launched EC2 instance
* Created key pair and connected via SSH
* Updated system: `sudo apt update && sudo apt upgrade -y`

## System Preparation

Commands executed:

```bash
hostname
cat /etc/os-release
uname -r
free -h
df -h
ip addr show
date
sudo mkdir -p /opt/techstart
ls -ld /opt/techstart
```

* Verified system info and created project directory.

## Group Creation

Groups created:

```bash
sudo groupadd backend-dev
sudo groupadd frontend-dev
sudo groupadd devops-team
sudo groupadd dev-all
sudo groupadd team-leads
```

* Verified with: `getent group | grep dev`
* Groups now exist: backend-dev, frontend-dev, devops-team, dev-all, team-leads

## User Account Creation

Users created:

```bash
# Backend
sudo useradd -m -c "Steven" -s /bin/bash -g backend-dev -G dev-all backend1
sudo useradd -m -c "Akize" -s /bin/bash -g backend-dev -G dev-all backend2
sudo useradd -m -c "Brown" -s /bin/bash -g backend-dev -G dev-all backend3

# Frontend
sudo useradd -m -c "Patricia" -s /bin/bash -g frontend-dev -G dev-all frontend1
sudo useradd -m -c "Daniel" -s /bin/bash -g frontend-dev -G dev-all frontend2
sudo useradd -m -c "Ruth" -s /bin/bash -g frontend-dev -G dev-all frontend3

# DevOps
sudo useradd -m -c "James" -s /bin/bash -g devops-team -G dev-all devops1
sudo useradd -m -c "Kelly" -s /bin/bash -g devops-team -G dev-all devops2
sudo useradd -m -c "Peter" -s /bin/bash -g devops-team -G dev-all devops3

# Team Lead
sudo useradd -m -c "Steven Lead" -s /bin/bash -g team-leads -G dev-all,wheel teamlead
```

* Password for all users: `TechStart2025!`
* Verified users with `getent passwd | grep '/home'` and `id <username>`

## Shared Directory Structure & Permissions

Directories created:

```bash
sudo mkdir -p /opt/techstart/backend
sudo mkdir -p /opt/techstart/frontend
sudo mkdir -p /opt/techstart/devops
sudo mkdir -p /opt/techstart/shared
```

Ownership and SGID set:

```bash
sudo chown root:backend-dev /opt/techstart/backend
sudo chmod 2770 /opt/techstart/backend

sudo chown root:frontend-dev /opt/techstart/frontend
sudo chmod 2770 /opt/techstart/frontend

sudo chown root:devops-team /opt/techstart/devops
sudo chmod 2770 /opt/techstart/devops

sudo chown root:dev-all /opt/techstart/shared
sudo chmod 2770 /opt/techstart/shared
```

## ACLs

Applied ACLs for shared folder:

```bash
sudo setfacl -m u:backend1:rwx /opt/techstart/shared
sudo setfacl -m u:frontend1:rwx /opt/techstart/shared
sudo setfacl -m u:devops1:rwx /opt/techstart/shared
```

* Verified with `getfacl /opt/techstart/shared`

## Sudo Privileges

* Team lead has sudo privileges through `wheel` group.
* Verified:

```bash
su - teamlead
sudo whoami
# Output: root
```

## File Creation & SGID Inheritance

Created test files to check SGID:

```bash
touch /opt/techstart/backend/testfile_backend.txt
touch /opt/techstart/frontend/testfile_frontend.txt
touch /opt/techstart/devops/testfile_devops.txt
touch /opt/techstart/shared/sharedfile.txt
```

* Verified group inheritance using `ls -l`

## Backup & Clean Up

* Backup created:

```bash
sudo tar -czvf /home/teamlead/techstart_backup.tar.gz /opt/techstart
```

* EC2 instance stopped to avoid charges
* Verified disk usage: `df -h`

## Command History

* All executed commands saved in `03_Command_History.txt`

---

*This README reflects exactly what I did during Mini Project 1 on AWS EC2.*
