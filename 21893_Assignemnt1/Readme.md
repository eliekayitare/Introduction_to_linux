# Assignment 1 – Introduction to Linux Basic Commands

**Course:** COSC 8312  
**University:** Adventist University of Central Africa  
**Student:** Migisha Algor Fernand
**ID :** 21893
**Date:** December 2025

---

## 📘 Overview

This assignment focuses on understanding **Linux directory navigation**, **path usage (absolute and relative)**, and **file manipulation** using the `cp` command.

Each question demonstrates the correct Linux commands with screenshots showing outputs.

---

## 🧭 Question 1

**If you are in the `P3` directory, write the command to go to your home. (4 marks)**

### 1. Using a Relative Path

```bash
cd ../../..
```

### 2. Using an Absolute Path

```bash
cd /home/username
```

🖼️ **Screenshot:**  
![Screenshot 1](screenshot/1.png)

---

## 📂 Question 2

**Write the command to show a long listing of `Here` (4 marks)**

### 1. Using a Relative Path (if you are in the Command directory)

```bash
ls -l ../Here
```

### 2. Using an Absolute Path

```bash
ls -l /home/username/Here
```

🖼️ **Screenshot:**  
![Screenshot 2](screenshot/2.png)

---

## 📋 Question 3

**Write the command to copy the file `P3` to the Command directory (4 marks)**

### 1. Using a Relative Path (if you are in the P2 directory)

```bash
cp ../P3 ./Command/
```

### 2. Using a Relative Path (if you are in the P3 directory)

```bash
cp ./P3 ../Command/
```

### 3. Using a Relative Path (if you are in the Command directory)

```bash
cp ../P3 ./
```

### 4. Using an Absolute Path

```bash
cp /home/username/P3 /home/username/Command/
```

🖼️ **Screenshot:**  
![Screenshot 3](screenshot/3.png)

---

## 📁 Question 4

**Write the command to copy the files in `P3` to the Command directory (4 marks)**

### 1. Using a Relative Path (if you are in the P2 directory)

```bash
cp ../P3/* ./Command/
```

### 2. Using a Relative Path (if you are in the P3 directory)

```bash
cp * ../Command/
```

### 3. Using a Relative Path (if you are in the Command directory)

```bash
cp ../P3/* ./
```

### 4. Using an Absolute Path

```bash
cp /home/username/P3/* /home/username/Command/
```

🖼️ **Screenshot:**  
![Screenshot 4](screenshot/4.png)

---

## 💡 Summary

In these exercises, I practiced **navigating directories** and **copying files** using **relative and absolute paths**.  
I learned the difference between copying **a single file** and **all files** in a directory using wildcards (`*`).

---

## 🧠 What I Learned

- The difference between **relative** and **absolute** paths.
- How to use `ls -l` for detailed listings.
- How to copy files and directories using `cp`.
- The importance of directory structure awareness in Linux.
