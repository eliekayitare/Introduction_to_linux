# Introduction\_to\_linux



\# Linux Assignment 1 - Basic Commands



\*\*Student:\*\* Munyarukina Abel (23235)  

\*\*Course:\*\* COSC 8312  

\*\*Assignment:\*\* Introduction to Linux Basic Commands  

\*\*Date:\*\* September 2025  



---



\## What I Did



\### Repository Setup

1\. \*\*Cloned the repository\*\* from `https://github.com/eliekayitare/Introduction\_to\_linux.git`

2\. \*\*Created directory structure\*\* with Practice folder containing:

&nbsp;  - `Else/` directory

&nbsp;  - `Command/` directory with `info` file

&nbsp;  - `P1/` directory with subdirectories `Hi/` and `P2/`

&nbsp;  - `P3/` directory inside `Hi/` with `Here/` directory and `hereWeAre` file



\### Branch Management

3\. \*\*Created a new branch\*\* following the naming convention: `23235\_munyarukina\_abel\_assignment1`

4\. \*\*Worked exclusively on my branch\*\* to avoid conflicts with main branch



\### Command Practice

5\. \*\*Answered 6 questions\*\* covering:

&nbsp;  - Navigation using relative and absolute paths

&nbsp;  - File listing with long format

&nbsp;  - Copying directories and files using different path types

&nbsp;  - Understanding the difference between copying directories vs contents

&nbsp;  - Linux file system color coding



\### Documentation

6\. \*\*Created comprehensive assignment file\*\* with all commands and screenshot placeholders

7\. \*\*Documented each command\*\* with explanations of what it does and why

8\. \*\*Created this README\*\* to explain the learning process



---



\## Why I Did It



\### Learning Objectives

\- \*\*Master Linux navigation\*\*: Understanding how relative paths (`../`, `./`) and absolute paths (`/home/user/...`) work

\- \*\*Practice file operations\*\*: Learning to copy files and directories using `cp` command with appropriate flags

\- \*\*Understand directory structure\*\*: Getting familiar with Linux filesystem hierarchy

\- \*\*Git workflow practice\*\*: Learning proper branching and version control practices



\### Practical Skills Development

\- \*\*Problem-solving\*\*: Analyzing directory structures to determine correct paths

\- \*\*Command line proficiency\*\*: Building confidence with terminal operations

\- \*\*Documentation skills\*\*: Learning to explain technical processes clearly

\- \*\*Attention to detail\*\*: Following specific naming conventions and requirements



\### Professional Preparation

\- \*\*Version control\*\*: Understanding Git branching which is essential for software development

\- \*\*Linux administration\*\*: Building foundation for server management and DevOps work

\- \*\*Technical communication\*\*: Learning to document work clearly for others



---



\## What I Learned



\### Technical Knowledge



\#### 1. \*\*Path Navigation Concepts\*\*

\- \*\*Relative paths\*\* are relative to your current directory position

&nbsp; - `../` moves up one directory level

&nbsp; - `./` refers to current directory

&nbsp; - Multiple `../` can chain together: `../../../`

\- \*\*Absolute paths\*\* always start from the root directory (`/`) or home (`~`)

&nbsp; - Always work regardless of current location

&nbsp; - More verbose but more explicit



\#### 2. \*\*File Operations\*\*

\- \*\*`cp` command basics\*\*: `cp source destination`

\- \*\*Recursive copying\*\*: `-r` flag needed for directories

\- \*\*Wildcard usage\*\*: `\*` selects all files/directories in a location

\- \*\*Current directory reference\*\*: `.` represents current location



\#### 3. \*\*Directory vs Content Copying\*\*

\- \*\*Copying directory\*\*: `cp -r directoryname destination/` creates subdirectory

\- \*\*Copying contents\*\*: `cp -r directoryname/\* destination/` copies individual items

\- This distinction is crucial for file management



\#### 4. \*\*Linux File System Colors\*\*

\- \*\*Blue\*\*: Directories/folders

\- \*\*Yellow\*\*: Special files (devices, pipes, sockets)

\- \*\*White/Green\*\*: Regular files

\- \*\*Red\*\*: Archives, compressed files

\- Colors help quickly identify file types



\### Problem-Solving Skills



\#### 5. \*\*Directory Structure Analysis\*\*

\- Learned to visualize directory trees in my mind

\- Can calculate relative paths by counting directory levels

\- Understand parent-child relationships in filesystem



\#### 6. \*\*Command Construction\*\*

\- Breaking down complex paths into manageable parts

\- Verifying commands mentally before execution

\- Understanding command syntax and flag usage



\### Professional Practices



\#### 7. \*\*Git Workflow\*\*

\- \*\*Branch naming conventions\*\* are important for team collaboration

\- \*\*Never work directly on main branch\*\* to avoid conflicts

\- \*\*Commit messages\*\* should be descriptive

\- \*\*Push only to your branch\*\* to maintain repository integrity



\#### 8. \*\*Documentation Standards\*\*

\- \*\*Clear explanations\*\* help others understand your work

\- \*\*Screenshots provide proof\*\* of command execution

\- \*\*Structured format\*\* makes information easy to find

\- \*\*Examples and reasoning\*\* demonstrate understanding



\### Challenges Overcome



\#### 9. \*\*Complex Directory Structure\*\*

\- My directory structure was deeper than typical examples

\- Required counting multiple `../` levels accurately

\- Learned to draw directory trees to visualize paths



\#### 10. \*\*Command Precision\*\*

\- Small typos can cause commands to fail

\- Learned importance of exact spacing and syntax

\- Developed habit of double-checking commands



---



\## Key Takeaways



1\. \*\*Practice makes perfect\*\*: The more I used these commands, the more natural they became

2\. \*\*Visualization helps\*\*: Drawing directory structures makes path calculation easier

3\. \*\*Documentation is valuable\*\*: Explaining commands helps reinforce learning

4\. \*\*Attention to detail matters\*\*: Small mistakes can have big consequences

5\. \*\*Git workflow is essential\*\*: Proper branching prevents many problems



---



\## Files in This Submission



```

├── assignment\_answers.md    # Main assignment file with all answers and screenshot placeholders

├── README.md               # This file explaining the work

└── screenshots/            # Directory for all command screenshots

&nbsp;   ├── q1\_relative\_path.png

&nbsp;   ├── q1\_absolute\_path.png

&nbsp;   ├── q2\_relative\_ls.png

&nbsp;   ├── q2\_absolute\_ls.png

&nbsp;   ├── q3\_from\_p2.png

&nbsp;   ├── q3\_from\_p3.png

&nbsp;   ├── q3\_from\_command.png

&nbsp;   ├── q3\_absolute.png

&nbsp;   ├── q4\_from\_p2.png

&nbsp;   ├── q4\_from\_p3.png

&nbsp;   ├── q4\_from\_command.png

&nbsp;   ├── q4\_absolute.png

&nbsp;   └── q6\_colors.png

```



---





\## Contact Information



\*\*Student:\*\* Munyarukina Abel  

\*\*Student ID:\*\* 23235  

\*\*Email:\*\* \[Your email if needed]  

\*\*Branch:\*\* `23235\_munyarukina\_abel\_assignment1`  



---



\*This assignment helped me build a solid foundation in Linux command line operations and proper documentation practices. The hands-on experience with real directory structures was invaluable for understanding how these commands work in practice.\*

