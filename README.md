# Linux

## SELINUX SETUP

### CHECKING SELINUX status in LINUX

```sestatus```

### Disabling SELINUX in LINUX

To disable SELinux temporarily, issue the command below as root:

```echo 0 > /selinux/enforce```

Alternatively, you can use the setenforce tool as follows:

```setenforce 0```

Else, use the Permissive option instead of 0 as below:
 
```setenforce Permissive```

These methods above will only work until the next reboot, therefore to disable SELinux permanently, move to the next section.

### DISABLING SELINUX PERMANENTLY 

open the file ```vi /etc/sysconfig/selinux``` 

Then change the directive ```SELinux=enforcing``` to ```SELinux=disabled``` 

```SELINUX=disabled```

### du -shxc --exclude /proc

### Disk Space issue
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


# Ulimit command - Setting limits with Ulimit command
$ ulimit -c ulimited
$ ulimit -c
unlimited

$ ulimit -u 100
-bash: ulimit: max user processes: cannot modify limit: Operation not permitted
-a     All current limits are reported

-c     The maximum size of core files created

-d     The maximum size of a process's data segment

-e     The maximum scheduling priority ("nice")

-f     The  maximum  size  of files written by the shell and its
       children

-i     The maximum number of pending signals

-l     The maximum size that may be locked into memory

-m     The maximum resident set size (has no effect on Linux)

-n     The maximum number of open file descriptors (most systems
       do not allow this value to be set)

-p     The pipe size in 512-byte blocks (this may not be set)

-q     The maximum number of bytes in POSIX message queues

-r     The maximum real-time scheduling priority

-s     The maximum stack size

-t     The maximum amount of cpu time in seconds

-u     The  maximum  number  of  processes available to a single
       user
-v     The maximum amount of virtual  memory  available  to  the
       shell
