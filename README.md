# Linux Basic Commands Assignment 1

**Student ID:** 27653 
**Name:** Sabato Clesence  
**Course:** COSC 8312 - Introduction to Linux  
**Date:** 24 sep 25k

## Assignment Overview
This assignment demonstrates practical application of basic Linux commands including navigation, file listing, and file operations using both relative and absolute paths.

## What I Did

### 1. Directory Navigation from P3 to Home
- **Relative Path**: Used `cd ../../..` to navigate up three directory levels
- **Absolute Path**: Used `cd /home/your_username` for direct home access
- Successfully demonstrated both path navigation methods

### 2. Long Listing of Here Directory
- **Relative Path from Command**: `ls -l ../Here`
- **Absolute Path**: `ls -l /home/your_username/Here`
- Displayed detailed file information using the `-l` flag

### 3. File Copy Operations - Single File (hereWeAre)
- **From P2**: `Copy-Item ..\hi\p3\P3 ..\..\command\`
- **From P3**: `Copy-Item P3 ..\..\..\command\`
- **From Command**: `Copy-Item ..\p1\hi\p3\P3 .`
- **Absolute Path**: Used full Windows path with Copy-Item
- Successfully copied the hereWeAre file to Command directory from various locations

### 4. File Copy Operations - All Files in P3
- Used similar path structures as Q3 but for multiple files
- Applied Copy-Item command with appropriate source paths
- Demonstrated bulk file operations

### 5. Path and Color Analysis
- Analyzed differences between single file vs multiple file copy operations
- Identified Linux color coding conventions for different file types

## Why I Did It

### Path Navigation Mastery
- **Relative paths** demonstrate understanding of directory hierarchy relationships
- **Absolute paths** ensure precise targeting regardless of current location
- Both skills are essential for efficient Linux system navigation

### File Operation Proficiency
- Copy operations are fundamental to file management tasks
- Practicing from different directories builds flexibility in command usage
- Understanding path resolution prevents common file operation errors

### System Understanding
- Color coding analysis reveals Linux file type identification system
- Differentiating file operations enhances command precision
- Cross-platform awareness (Linux vs Windows PowerShell)

## What I Learned

### Technical Skills Acquired
- **Path Construction**: Building accurate relative and absolute paths
- **Command Syntax**: Proper use of `cd`, `ls -l`, and `Copy-Item` commands
- **File Operations**: Difference between single file and directory copying
- **Cross-Platform Commands**: Adapting Linux concepts to Windows PowerShell

### Conceptual Understanding
- **Directory Hierarchy**: How parent-child relationships work in file systems
- **Path Resolution**: How operating systems interpret different path types
- **File Type Identification**: Meaning behind Linux color coding system
- **Command Flexibility**: Same operations can be performed from different locations

### Problem-Solving Insights
- **Error Prevention**: Careful path construction avoids "file not found" errors
- **Efficiency**: Choosing between relative and absolute paths based on context
- **Verification**: Using `ls` commands to confirm operation success

## Key Command Insights

### Navigation Commands
```bash
# Relative path navigation
cd ../../..

# Absolute path navigation  
cd /home/your_username