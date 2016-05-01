Linux Kernel for OrangePI H3 boards
===================================
Mention
-----
This configuration use an usb root partition as root filesystem to avoid sdcard broken.

When I changed the boot option in kernel configuration,the Orange PI couldn't boot with
an USB RAID partition as root filesystem normally sometimes even with rootwait rootdeley=10 
option. The reason is that the inactivated RAID box was totally stoped after some time 
without R/W,so the OPI can't detect and use the USB storage as expected.Just unplug the
power and plugin right at the time,the OPI can start to work!!!

About
-----

The repository contains Linux kernel sources (3.4.39) adapted for OrangePI H3 boards, gcc toolchain, adapted rootfs and building scripts.

Building
--------

Kernel config files and the files specific to OPI board are placed in **build** directory.

The included build script *build_linux_kernel.sh* can be used to build the kernel<br />
`./build_linux_kernel.sh [clean | all | 2 | plus] [clean]`

**clean** as 1st parameter cleans the kernell tree and build directories<br />
**clean** as 2nd parameter cleans the kernell tree before build<br />
**all** builds the uImage for OPI-2 & OPI-PLUS<br />
**2** builds the uImage for OPI-2<br />
**plus** builds the uImage for OPI-PLUS<br />

After the build the resulting kernel files (uImage and kernel modules) are placed into **build** directory.

To build **script.bin** for all OPI boards and resolutions run:<br />
`./build_scripts [clean]`<br />
**clean** as 1st parameter cleans the scripts and logs<br />

After the build the *script.bin* are placed into **build** directory.

To **configure kernel** run:<br />
`./config_linux_kernel.sh`

