# Linux

## Disk Space Issues
#### du -shxu --exclude /proc
#### Disk Space issue
1. Command du 
2. Using “-h” option with “du” command provides results in “Human Readable Format“. Means you can see sizes in Bytes, Kilobytes, Megabytes, Gigabytes etc.
3. To get the summary of a grand total disk usage size of an directory use the option “-s” as follows.
4. Using “-a” flag with “du” command displays the disk usage of all the files and directories.
5. Using “-a” flag along with “-h” displays disk usage of all files and folders in human readeable format. The below output is more easy to understand as it shows the files in Kilobytes, Megabytes etc.
6. Find out the disk usage of a directory tree with its subtress in Kilobyte blcoks. Use the “-k” (displays size in 1024 bytes units).
7. To get the summary of disk usage of directory tree along with its subtrees in Megabytes (MB) only. Use the option “-mh” as follows. The “-m” flag counts the blocks in MB units and “-h” stands for human readable format
8. The “-c” flag provides a grand total usage disk space at the last line. If your directory taken 50 MB space, then the last last two line of the output would be.
9. The below command calculates and displays the disk usage of all files and directories, but excludes the files that matches given pattern. The below command excludes the “.txt” files while calculating the total size of diretory. So, this way you can exclude any file formats by using flag “-–exclude“. See the output there is no txt files entry.
10. Display the disk usage based on modification of time, use the flag “–time” as shown below.
