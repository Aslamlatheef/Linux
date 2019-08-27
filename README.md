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
