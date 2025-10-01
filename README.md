
Linux Assignment – Summary

This document summarizes the key solutions provided for the Linux Assignment.

Key Topics Covered

1. System directories and security
   - Identified sensitive directories like /etc, /bin, /var, /tmp, /home and explained why attackers might target them.

2. Directory and project structure
   - Used mkdir -p with brace expansion to create complex nested project directories efficiently.

3. Navigation in Linux
   - Demonstrated moving between directories using relative paths and pwd to prove the location.

4. File creation with patterns
   - Generated HTML, CSS, JavaScript, and backup files using brace expansion and wildcards.

5. Wildcards and find usage
   - Practiced matching files using wildcards, and used find to detect files by size, permissions, modification time, and naming.

6. Brace expansion for automation
   - Created log files, configuration files, and test files quickly using expansions.

7. Cross-platform file compatibility
   - Showed how Linux (LF) vs Windows (CRLF) line endings cause differences across diff, cmp, and comm.

8. Log file analysis
   - Extracted specific lines, searched for error patterns, showed efficiency of less over cat.

9. File maintenance automation
   - Used find -exec to change permissions, backup files, and safely remove temporary files.

10. Compression and archives
    - Compared tar+gzip, tar+bzip2, tar+xz, and zip on text files vs already compressed files.
    - Recommended tar + gzip for automated backups as a balance between speed and ratio.

11. Backup rotation strategy
    - Designed daily incrementals, weekly full, and monthly archives with cleanup and verification steps.

12. User and group analysis
    - Differentiated system vs regular users, analyzed groups, highlighted risks of privilege escalation.

13. Privilege escalation audit
    - Compared sudo -i, sudo su, and su -, and reviewed risks of overly permissive sudo.

Conclusion

The assignment provided practice with Linux fundamentals including directories, file manipulation, permissions, compression, automation, and security auditing.
It reinforced efficient command usage and highlighted best practices for system administration and security.
