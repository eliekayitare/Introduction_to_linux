# Introduction_to_linux

# Assignment 1 – Introduction to Linux Basic Commands

## Student Info

- **Name:** Ntwari Ashimwe Fiacre
- **Student ID:** 27438
- **Assignment:** 1

---

## Q1. Navigation to Home (for reference)

1. Using relative path (from P3):

```bash
cd  ../../../../../../../
```

2.Using absolute path:

```bash
cd  /c/Users/’Cordial Space’/
```

---

## Q2. Show a long listing of `Here`

1. Relative path (from Command):

```bash
cd  ../P1/Hi/P3/Here && ls -l
```

2.Absolute path:

```bash
cd /c/Users/’Cordial Space’/P1/Hi/P3/Here  &&  ls -l
```

---

## Q3. Copy directory files `P3` into Command

1.Relative path (from P2):

```bash
cp -r  ../Hi/P3 ../Command/
```

2.Relative path (from P3):

```bash
cp -r  .  ../Command/
```

3.Relative path (from Command):

```bash
cp -r   ../P1/H1/P3   .
```

4.Absolute path:

```bash
cp -r  /c/Users/’Cordial Space’/Practice/P1/Hi/P3   /c/Users/’Cordial Space’/Practice/Command  
```

---

## Q4. Copy contents of `P3` into Command

1. Relative path (from P2):

```bash
cp -r ../Hi/P3/* ../Command/
```

2.Relative path (from P3):

```bash
cp -r ./* ../Command/
```

3.Relative path (from Command):

```bash
cp -r ../P1/H1/P3/*    .
```

4.Absolute path:

```bash
cp -r  /c/Users/’Cordial Space’/Practice/P1/Hi/P3/*   /c/Users/’Cordial Space’/Practice/Command  
```

---

## Q5. Difference between Q3 and Q4

- Q3 copies the **whole P3 folder** into `Command`.
- Q4 copies **only the contents inside P3** into `Command`.

---

## Q6. Colors meaning

- **Yellow** : Executable file (program/script you can run).  
- **Blue** :  Directory (folder).  
- **hereWeAre** :  Should be white (regular file), because it is neither a directory nor executable.

## What I did

I practiced basic Linux commands including navigation (`cd`), listing files (`ls -l`), and copying files and directories (`cp`, `cp -r`).

## Why I did it

The goal was to understand how relative and absolute paths work, and to learn the difference between copying a folder itself and copying only its contents.

## What I learned

- How to move around directories using both relative and absolute paths.
- How to list files with detailed information using `ls -l`.
- The difference between copying directories (`cp -r`) vs copying files.
- How Linux uses colors to indicate file types (executable, directory, regular file).
