# Introduction_to_linux


## What I Did
I used several basic Linux commands to perform tasks related to file and directory management.

- cd (Change Directory): I used this command to move between different folders, including navigating up multiple levels using cd ../../.. and returning to the previous directory with cd -.

- ls -l (List): I ran this command to view all the files in the current directory in a detailed list format.

- cp (Copy): I used the cp command to copy both individual files and entire directories. To copy an entire directory, I had to use the recursive flag 

- -r. I performed copies using both absolute paths (starting from the root directory) and relative paths (based on the current location).

Color-coding: I observed that the terminal uses different colors to represent different elements, such as blue for directories and yellow for the current path.

## Why I Did It

- cd was used for navigation, allowing me to move to the correct locations to execute other commands.

- ls -l was used to verify the contents of a directory and ensure the commands were working as expected.

- cp was used to duplicate files and entire folders. I specifically used the 

- -r flag to copy a folder and all its contents, as the regular cp command only works for single files.

## What I Learned

- Path Management: I learned the critical difference between absolute and relative paths. Absolute paths are static and work from any location, while relative paths are dynamic and depend on where you are currently located in the file system.

- Command Flags: I learned the importance of command flags, such as the -r in cp -r. This flag is necessary to perform a recursive copy, which is essential for copying entire directories and not just single files.

- Terminal Visuals: The color-coding in the terminal is a helpful feature that provides immediate visual feedback. I learned to identify folders (blue), current paths (yellow), and other elements (like the username in green and GitHub distribution in pink) based on their color. These colors help to prevent confusion and make it easier to understand the output.

- The Power of cd: The cd command is more than just for moving forward; using cd .. and cd - provides a quick and efficient way to navigate backward and between recently visited directories.
