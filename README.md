Assignment 1: Linux Basic Commands

This README provides the commands and explanations for the questions in the
Introduction to Linux Basic commands assignment. The file structure referenced is from the provided assignment document.


---

1. Navigating to the Home Directory

From the P3 directory, using a relative path:
cd ../../../
This command uses .. to move up one directory level. From P3, you need to go up three levels to reach your home directory (olive in the as changed mcbishop).

From the P3 directory, using an absolute path:
cd /home/olive
This command uses the full path from the root directory (/) to go directly to the home directory. The path will work from any location.



---

2. Listing the Contents of Here

From the Command directory, using a relative path:
ls -l ../P1/Hi/Hello/P3/Here
The ls -l command lists file and directory information in a long format. Starting from Command, ../ moves up to Practice, and the rest of the path is followed to reach the Here directory.

Using an absolute path:
ls -l /home/olive/practice/P1/Hi/Hello/P3/Here
This command uses the full path from the root directory to list the contents of Here.



---

3. Copying the P3 Directory

From the P2 directory:
cp -r ../P1/Hi/Hello/P3 ../command

From the P3 directory:
cp -r . ../../../command

From the Command directory:
cp -r ../P1/Hi/Hello/P3 .

Using an absolute path:
cp -r /home/olive/practice/P1/Hi/Hello/P3 /home/olive/practice/command
The cp -r command copies a directory and its entire contents recursively.



---

4. Copying the Files within P3

From the P2 directory:
cp ../P1/Hi/Hello/P3/* ../Command/

From the P3 directory:
cp * ../../../command/

From the Command directory:
cp ../P1/Hi/Hello/P3/* .

Using an absolute path:
cp /home/olive/practice/P1/Hi/Hello/P3/* /home/olive/practice/command/
This command copies only the files from the source directory using the * wildcard.



---

5. Difference between Questions 3 and 4

Question 3 copies the entire P3 directory itself to the destination.

Question 4 copies only the contents (files) inside the P3 directory to the destination.



---

6. File System Diagram Colors

Yellow represents a file.

Blue represents a directory.

The hereWeAre item should be yellow because it is a file inside the Here directory.
