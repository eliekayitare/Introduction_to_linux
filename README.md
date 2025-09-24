## 🐧 Assignment 1 – Introduction to Linux Basic Commands

### 📌 What I Did

Cloned the provided repository and created a correctly named branch.

Answered all six questions with both relative and absolute path solutions.

Prepared a structure for screenshots 🖼️ that demonstrate each command’s result.

### 🎯 Why I Did It

To practice and demonstrate command-line proficiency:

🔄 Navigating with relative (.., .) and absolute (/home/...) paths.

📑 Understanding the differences between copying a single file vs. contents of a directory.

🎨 Interpreting ls color codes (LS_COLORS) to identify file types.

### 💡 What I Learned

Copy semantics:

📄 cp file dest/ → copies one file.

📂 cp dir/* dest/ → copies all non-hidden files in a directory.

🛠️ cp -a dir/. dest/ → copies everything (including hidden files) while preserving attributes.

Terminal color cues: recognizing differences between directories, executables, and special files.

Navigation shortcuts:

🏠 cd or cd ~ → moves directly to the home directory.

Absolute vs. relative paths: when to use clarity (absolute) vs. flexibility (relative).

### 🛠️ How to Reproduce

Clone and switch to branch:

git clone https://github.com/eliekayitare/Introduction_to_linux.git
cd Introduction_to_linux
git checkout -b 26510_Mahirwe_Yvette_assignment1


Run commands in Assignment1_answers.md from the specified starting directories.

Save screenshots 🖼️ into the ./screenshots/ folder using the suggested filenames.

Commit and push only to my branch:

git add Assignment1_answers.md README.md screenshots/
git commit -m "Assignment 1 submission"
git push -u origin 26510_Mahirwe_Yvette_assignment1

### ✅ Summary

This assignment improved my ability to:

Navigate Linux 🐚

Use copy commands effectively 📂

Interpret visual cues from the shell 🎨



