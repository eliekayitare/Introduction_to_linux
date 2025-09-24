
# COSC 8312 — Assignment 1: Introduction to Linux Basic Commands
**Student ID:** `27019`  
**Name:** `NSHIMIYIMANA CYUSA KHEVEN`  
**Username (login directory):** `kheven`  
**Branch name:** `27019_NSHIMIYIMANA_CYUSA_KHEVEN_assignment1`

---

## Q1. From `P3` directory, go to your home
1) **Relative path**
```bash
cd ~
# OR cd without specifying anything
cd 
```
2) **Absolute path**:
```bash
cd /home/kheven
```

### Screenshots

  - `./screenshots/q1-relative.png`
    ![Q1 - Relative](./screenshots/q1-relative.png)
  - `./screenshots/q1-absolute.png`
    ![Q1 - Absolute](./screenshots/q1-absolute.png)

---

## Q2. Show a long listing of `Here`
> Context: “if you are in the `Command` directory”.

1) **Relative path (from `Command`)**
```bash
ls -l ../P1/Hi/P3/Here/
```

2) **Absolute path**
```bash
ls -l /home/your_username/Here
```

### Screenshot
- `./screenshots/q2-relative.png`
    ![q2-relative](./screenshots/q2-relative.png)
- `./screenshots/q2-absolute.png`
    ![Q2 - Absolute](./screenshots/q2-absolute.png)

---

## Q3. Copy **the file** `P3` to the `Command` directory
> The intent here is copying a single file named `P3`.

- **From `P2` directory (relative)**  
```bash
cp ../P3 ./Command
```
- **From `P3` directory (relative)**  
```bash
cp ./P3 ../Command
```
- **From `Command` directory (relative)**  
```bash
cp ../P3 ./
```
- **Absolute path**  
```bash
cp /home/your_username/P3 /home/your_username/Command
```

### Screenshot
- `./screenshots/q3-1.png`
 ![P3 to Command](./screenshots/q3-1.png)
- `./screenshots/q3-2.png`
  ![P3 to Command froom P2](./screenshots/q3-2.png)
- `./screenshots/q3-command.png`
    ![P3 to Command from Command](./screenshots/q3-3.png)
- `./screenshots/q3-absolute.png`
  ![P3 to Command with absolute path](./screenshots/q3-4.png)

---

## Q4. Copy **the files inside** `P3` to the `Command` directory
> The intent here is copying *contents of the directory* `P3/`.

- **From `P2` directory (relative)**  
```bash
cp ../P3/* ./Command
```
- **From `P3` directory (relative)**  
```bash
cp * ../Command
```
- **From `Command` directory (relative)**  
```bash
cp ../P3/* ./
```
- **Absolute path**  
```bash
cp /home/kheven/P3/* /home/kheven/Command
```

> If you need to copy hidden files too, use:
```bash
cp -a /home/kheven/P3/. /home/kheven/Command
```

---

## Q5. Difference between Q3 and Q4
- **Q3:** Copies a **single file** named `P3`.
- **Q4:** Copies **all files** contained **inside** the `P3` directory.

---

## Q6. Colors in `ls` output (LS_COLORS)
- **Blue** → Directory
- **Green** → Executable file (or symlink to executable)
- **Yellow** → Device/special file (or sometimes setuid/setgid files depending on theme)

**hereWeAre** should be **green** *if it’s executable*, otherwise it will appear in the default file color (often white).

---

## Appendix: Useful commands for screenshots
```bash
# Show current directory path
pwd

# Show relative/absolute paths as you navigate
ls -l
tree -L 2
```
