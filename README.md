# Introduction_to_linux

Read me file it gona showing:

. What I did.
. Why I did,
. What I learned.

===================================================================================================================


*First Command comes here to cloning my work to the eliekayitare As my Lecturer git repository.

--> git clone https://github.com/eliekayitare/Introduction_to_linux.git

*Here, an attempt was made to check if branch I'm gonna use is there.

--> git branch -a

*Here i create the branch as requsted that used to record my work called 25595_Ishimwe_Patrick_assignment1

--> sudo git checkout -b 25595_Ishimwe_Patrick_assignment1

*Here checkin if use the branch that i created,

--> git branch -a

*Here i'm going to create All Directory, Subdirectries and Files with one embended command.

--> sudo mkdir -p Practice/{Command,Else,P1/{P2,Hi/P3/Here}} && sudo touch Practice/Command/Info Practice/P1/Hi/Hello Practice/P1/Hi/P3/Here/hereWeAre

--> tree Practice for checking if all Directories, SubDirectories and Files being created.


Let go to the asked Question.

before we need to go inside in P3 directory. if i want to back where i come from use shortcat cd - 

--> cd Practice/P1/Hi/P3
--> cd - 
Absolute means: start from the root /(Specify) or directly use the shortcut for home.
Relative means: count from where I am now.

Q1.
	1. Using a relative path
	cd ../../../../

	2. Using an absolute path
	cd ~
	cd /home/vegas



Q2.
	1. Using a relative path
	From Command, go up one level → into P1/Hi/P3/Here
	ls -l ../P1/Hi/P3/Here

	2. Using an absolute path
	starts from your home ~ (or /home/vegas)
	ls -l ~/Practice/P1/Hi/P3/Here


Q3.	
	1. Using a relative path
	Current directory: ~/Practice/P1/Hi/P2
	cp -r ../P3 ../../../../Command/	

	2. Using an absolute path
	Current directory: ~/Practice/P1/Hi/P3
	cp -r . ../../../../Command/

	3. Using a relative path
	Current directory: ~/Practice/Command
	cp -r ../P1/Hi/P3 ./

	4. Using an absolute path
	Assuming home = ~ (or /home/vegas), Command directory = ~/Practice/Command
	cp -r ~/Practice/P1/Hi/P3 ~/Practice/Command/


Q4.
	1. Using a relative path
	Current dir: ~/Practice/P1/Hi/P2
	P3 is at the same level as P2.
	cp ../P3/* ../../../../Command/
	
	2. Using an absolute path
	Current dir: ~/Practice/P1/Hi/P3
	All files are here.
	cp * ../../../../Command/


	3. Using a relative path
	Current dir: ~/Practice/Command
	P3 is located in ../P1/Hi/P3.
	cp ../P1/Hi/P3/* ./

	4. Using an absolute path
	cp ~/Practice/P1/Hi/P3/* ~/Practice/Command/


Q5.	What’s the difference between these last 2 (Questions 3 and 4)?

Question 3 copies the entire P3 folder (including its contents like Here) into the Command directory, creating a new subdirectory Command/P3.
Question 4 copies only the files inside P3 (e.g., contents of Here) directly into the Command directory, without creating a P3 subdirectory.


Q6.  What do you think the yellow color means? The blue? What color should hereWeAre be, and why?

Yellow color: The yellow color likely indicates a FIFO (named pipe) or file. 
Blue color: The blue color indicates a directory.
Color for hereWeAre: hereWeAre should be white, because it is a regular file (a leaf node with no subdirectories, typically a text or data file). Standard ls colors show regular files as white unless they are executable (green) or have special permissions.


## What I Did
- Reasoned Linux commands based on the tree diagram.
- Set up the directory structure and created pipes/files.
- Captured screenshots of command outputs.

## Why I Did It
- To learn Linux navigation, file operations, and Git usage for submission.

## What I Learned
- Relative paths depend on the current directory; absolute paths are fixed.
- `cp -r` copies directories; `*` copies contents.
- Git requires proper branch management for submission.
