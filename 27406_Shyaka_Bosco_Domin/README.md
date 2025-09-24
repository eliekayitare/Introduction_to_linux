# Introduction to Linux - Assignment 1

**Student ID:** 27406
**Name:** Shyaka Bosco Domin
**Course:** Introduction to Linux
**Date:** September 24, 2025

---

## 📋 Assignment Overview

This assignment demonstrates practical Linux command-line skills including:

* Directory navigation
* File management
* Permissions handling
* Git version control operations

---

## 🏗️ Directory Structure

```
Practice/
├── Command/          # Command files directory
├── Else/             # Additional practice directory
├── P1/               # Primary practice folder
│   └── Hi/
│       └── P3/
│           ├── Hello
│           ├── Here/
│           │   └── info
│           └── HereWeAre
└── P2/               # Secondary practice folder
```

---

## ✅ Tasks Completed

### 1. Directory Navigation

* Navigated from `/home/think_big/Introduction_to_linux` to root using `cd ../../..`
* Verified paths with `pwd`
* Explored multi-level directory traversal

### 2. File System Analysis

* Used `tree` command to visualize directory structure
* Identified **8 directories** and **3 files**
* Analyzed file organization hierarchy

### 3. Permission Management

```bash
sudo chown -R $(whoami):$(whoami) 27406_Shyaka_Bosco_Domin
chmod -R u+rw 27406_Shyaka_Bosco_Domin
```

### 4. File Operations

* Created and edited `assignment1.txt` using `nano`
* Organized files within the directory structure
* Managed file creation and modification

### 5. Git Version Control

```bash
git add 27406_Shyaka_Bosco_Domin/
git commit -m "Assignment 1 submission by Shyaka Bosco Domin"
git push origin 27406_Shyaka_Bosco_Domin_Assignment1
```

---

## 💻 Key Commands Executed

### Navigation

```bash
pwd       # Print working directory
cd ../../..  # Navigate up three levels
ls -la    # List all files with details
```

### File Management

```bash
tree Practice/   # Display directory tree
nano filename.txt  # Text file editing
mkdir directory   # Create new directory
```

### System Administration

```bash
sudo chown -R user:user dir/  # Change ownership
chmod -R u+rw dir/            # Modify permissions
```

---

## 📊 Results Summary

| Task                 | Status      | Details                              |
| -------------------- | ----------- | ------------------------------------ |
| Directory Navigation | ✅ Completed | Successfully navigated to root       |
| File Structure       | ✅ Completed | 8 directories, 3 files created       |
| Permission Setup     | ✅ Completed | Ownership and permissions configured |
| Git Operations       | ✅ Completed | 7 files committed, 27+ insertions    |
| Remote Push          | ✅ Completed | Successfully pushed to GitHub        |

---

## 🎯 Learning Objectives Achieved

* **Linux Navigation:** Mastered directory traversal using relative paths
* **File Management:** Created and organized files efficiently
* **Permission Handling:** Understood Linux file security model
* **Version Control:** Implemented professional Git workflow
* **System Administration:** Applied sudo privileges appropriately

---

## 🚀 Quick Start

### Clone Repository

```bash
git clone https://github.com/eliekayitare/Introduction_to_Linux
```

### Navigate to Assignment

```bash
cd Introduction_to_Linux/27406_Shyaka_Bosco_Domin
```

### View Structure

```bash
tree Practice/
```

### Verify Files

```bash
ls -la Practice/P1/Hi/P3/
```

---

## 📁 Files Included

* `assignment1.txt` - Main assignment documentation
* Complete `Practice/` directory structure
* Git configuration and commit history
* Permission settings documentation

---

## ⚠️ Troubleshooting

**Issue:** "Directory already exists" error when cloning

```bash
# Solution
cd Introduction_to_linux/
git pull origin main
```

**Issue:** Permission denied errors

```bash
# Solution
sudo chown -R $USER:$USER directory/
```

---

## 📈 Performance Metrics

* Commands Executed: 15+ Linux commands
* Files Managed: 10+ files and directories
* Git Operations: Full commit/push workflow
* Error Resolution: Handled multiple system issues

---

## 🔊 Conclusion

This assignment demonstrates a comprehensive understanding of Linux file system operations, command-line navigation, and version control practices. All tasks were completed efficiently with proper error handling and verification.

**Repository:** [https://github.com/eliekayitare/Introduction\_to\_Linux](https://github.com/eliekayitare/Introduction_to_Linux)
**Branch:** `27406_Shyaka_Bosco_Domin_Assignment1`
**Status:** ✅ Completed and Submitted
