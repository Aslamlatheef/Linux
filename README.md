# Linux

## LINUX BOOT PROCESS
![BOOTING](https://github.com/Aslamlatheef/Linux/blob/master/IMAGES/Linux-boot-process.png)

Linux Booting process has 5 stages

**PowerON** - BIOS (Basic Input Output System) is a software program comes pre-built in a motherboard chipset and Bios loading

**MBR (MASTER BOOT RECORD)**
- 512 bytes of space –> MBR
- MBR contains the information of loader of most operating system e.g UNIX, Linux and WINDOWS
- MBR holds the small binary information of 1st stage of loader
- Container Four Partitions (16 Bytes each) + Bootstrap code (446 bytes) + Magic Number or boot signature (Checksum ) 2 bytes

![MBR](https://github.com/Aslamlatheef/Linux/blob/master/IMAGES/mbr-vs-gpt-guide-3.png)

**BootLoader**
- The boot loader termed from 1st stage loader and loads itself into RAM. All this go on in milliseconds.
- The default stage 2 boot loader is a GRUB (Grand Unified Boot Loader) or LILO (Linux Loader)
- Once GRUB is loaded into RAM, then it’s search for the location of Kernel.
- GRUB will scrutinize the map file to find the kernel image, that is located under (/boot) and load it.
- GRUB loads the kernel (vmlinuz-version) from /boot partition

**Kernel initialization**
- initialize CPU components, eg, MMU
- initialize the scheduler (PID 0)
- mount the root filesystem in rw mode
- fork off the init process (PID 1)
- Start the core system of shared resource managers (RAM, processor and mass storage).
- Starts a single process, /sbin/init.

**RUN LEVEL INITITION**
- loading run level of Opeating system

## Linux Directory Structure and Important Files Paths
![directorystucture](https://github.com/Aslamlatheef/Linux/blob/master/IMAGES/Linux-Directory-Structure.jpeg)

- bin : All the executable binary programs (file) required during booting, repairing, files required to run into single-user-mode, and other important, basic commands viz., cat, du, df, tar, rpm, wc, history, etc.
- /boot : Holds important files during boot-up process, including Linux Kernel.
- /dev : Contains device files for all the hardware devices on the machine e.g., cdrom, cpu, etc
- /etc : Contains Application’s configuration files, startup, shutdown, start, stop script for every individual program.
- /home : Home directory of the users. Every time a new user is created, a directory in the name of user is created within home directory which contains other directories like Desktop, Downloads, Documents, etc.
- /lib : The Lib directory contains kernel modules and shared library images required to boot the system and run commands in root file system.
- /lost+found : This Directory is installed during installation of Linux, useful for recovering files which may be broken due to unexpected shut-down.
- /media : Temporary mount directory is created for removable devices viz., media/cdrom.
- /mnt : Temporary mount directory for mounting file system.
- /opt : Optional is abbreviated as opt. Contains third party application software. Viz., Java, etc.
- /proc : A virtual and pseudo file-system which contains information about running process with a particular Process-id aka pid.
- /root : This is the home directory of root user and should never be confused with ‘/‘
- /run : This directory is the only clean solution for early-runtime-dir problem.
- /sbin : Contains binary executable programs, required by System Administrator, for Maintenance. Viz., iptables, fdisk, ifconfig, swapon, reboot, etc.
- /srv : Service is abbreviated as ‘srv‘. This directory contains server specific and service related files.
- /sys : Modern Linux distributions include a /sys directory as a virtual filesystem, which stores and allows modification of the devices connected to the system.
- /tmp :System’s Temporary Directory, Accessible by users and root. Stores temporary files for user and system, till next boot.
- /usr : Contains executable binaries, documentation, source code, libraries for second level program.
- /var : Stands for variable. The contents of this file is expected to grow. This directory contains log, lock, spool, mail and temp files.


## Exploring Important file, their location and their Usability

- /boot/vmlinuz : The Linux Kernel file.
- /dev/hda : Device file for the first IDE HDD (Hard Disk Drive)
- /dev/hdc : Device file for the IDE Cdrom, commonly
- /dev/null : A pseudo device, that don’t exist. Sometime garbage output is redirected to /dev/null, so that it gets lost, forever.
- /etc/bashrc : Contains system defaults and aliases used by bash shell.
- /etc/crontab : A shell script to run specified commands on a predefined time Interval.
- /etc/exports : Information of the file system available on network.
- /etc/fstab : Information of Disk Drive and their mount point.
- /etc/group : Information of Security Group.
- /etc/grub.conf : grub bootloader configuration file.
- /etc/init.d : Service startup Script.
- /etc/lilo.conf : lilo bootloader configuration file.
- /etc/hosts : Information of Ip addresses and corresponding host names.
- /etc/hosts.allow : List of hosts allowed to access services on the local machine.
- /etc/host.deny : List of hosts denied to access services on the local machine.
- /etc/inittab : INIT process and their interaction at various run level.
- /etc/issue : Allows to edit the pre-login message.
- /etc/modules.conf : Configuration files for system modules.
- /etc/motd : motd stands for Message Of The Day, The Message users gets upon login.
- /etc/mtab : Currently mounted blocks information.
- /etc/passwd : Contains password of system users in a shadow file, a security implementation.
- /etc/printcap : Printer Information
- /etc/profile : Bash shell defaults
- /etc/profile.d : Application script, executed after login.
- /etc/rc.d : Information about run level specific script.
- /etc/rc.d/init.d : Run Level Initialisation Script.
- /etc/resolv.conf : Domain Name Servers (DNS) being used by System.
- /etc/securetty : Terminal List, where root login is possible.
- /etc/skel : Script that populates new user home directory.
- /etc/termcap : An ASCII file that defines the behaviour of Terminal, console and printers.
- /etc/X11 : Configuration files of X-window System.
- /usr/bin : Normal user executable commands.
- /usr/bin/X11 : Binaries of X windows System.
-/usr/include : Contains include files used by ‘c‘ program.
- /usr/share : Shared directories of man files, info files, etc.
- /usr/lib : Library files which are required during program compilation.
- /usr/sbin : Commands for Super User, for System Administration.
- /proc/cpuinfo : CPU Information
- /proc/filesystems : File-system Information being used currently.
- /proc/interrupts : Information about the current interrupts being utilised currently.
- /proc/ioports : Contains all the Input/Output addresses used by devices on the server.
- /proc/meminfo : Memory Usages Information.
- /proc/modules : Currently using kernel module.
- /proc/mount : Mounted File-system Information.
- /proc/stat : Detailed Statistics of the current System.
- /proc/swaps : Swap File Information.
- /version : Linux Version Information.
- /var/log/lastlog : log of last boot process.
- /var/log/messages : log of messages produced by syslog daemon at boot.
- /var/log/wtmp : list login time and duration of each user on the system currently.


## NETWORK CONFIGURATION

to check IP Address  VIEW all NETWORK SETTINGS 
	
	```ifconfig```

Display Information of All Network Interfaces 

	```ifconfig -a```

View Network Settings of Specific Interface 

	```ifconfig eth0```

How to Enable an Network Interface 

	```ifconfig eth0 up``` ```ifup eth0```

How to Disable an Network Interface 

	```ifconfig eth0 down``` ```ifdown eth0```

How to Assign a IP Address to Network Interface 
	
	```ifconfig eth0 172.16.25.125```

How to Assign a Netmask to Network Interface 

	```ifconfig eth0 netmask 255.255.255.224```

How to Assign a Broadcast to Network Interface 

	```ifconfig eth0 netmask 255.255.255.224```

How to Assign a Broadcast to Network Interface 

	```ifconfig eth0 broadcast 172.16.25.63```

How to Assign a IP, Netmask and Broadcast to Network Interface 

	```ifconfig eth0 172.16.25.125 netmask 255.255.255.224 broadcast 172.16.25.63```

How to Change MTU for an Network Interface 

	```ifconfig eth0 mtu 1000 ```

How to Enable Promiscuous Mode 

	```ifconfig eth0 promisc```

 How to Disable Promiscuous Mode 
 
 	```ifconfig eth0 -promisc```
 
 How to Add New Alias to Network Interface 
 
 	```ifconfig eth0:0 172.16.25.127 ``` verify with ```ifconfig eth0:0```
 
 How to Remove Alias to Network Interface 
 
 	```ifconfig eth0:0 down```
 
 How to Change the MAC address of Network Interface 
 
 	```ifconfig eth0 hw ether AA:BB:CC:DD:EE:FF```
 
 
 

Network Configuration File 

	
RedhaT/CENTOS      

	``` /etc/sysconfig/network-scripts/ifcfg-eth0 ```

Ubuntu / DEBIAN    

	``` sudo vi /etc/network/interfaces ```

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

## Disk Space issue

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


## Ulimit command - Setting limits with Ulimit command

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
