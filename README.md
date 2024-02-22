# kcfg - Kernel Configuration Tool

This script simplifies running the make menuconfig tool for customizing your Linux kernel configuration within a Docker container.

## Features

Provides a convenient interface to launch make menuconfig without manual environment setup.  
Allows specifying the Linux kernel directory and configuration path as command-line arguments.  
Automatically creates the configuration directory if it doesn't exist.  
Runs the make menuconfig command within a Docker container named kernel-configurator.

## Installation

```sh
make
```

## Usage

```sh
kcfg <linux_dir> <config_path>
```

linux_dir: Path to the directory containing the Linux kernel source code.  
config_path: Path to the directory where you want to store the configuration files.

## Example

```sh
kcfg /path/to/linux /home/user/.config/kernel
```

This will run make menuconfig using the kernel source code from /path/to/linux and store the configuration files in /home/user/.config/kernel.

## Requirements:

Docker installed and running.  
Root privileges to access and modify system files (depending on your chosen configuration path).

## Notes

Ensure the provided linux_dir exists and is accessible.  
This script is intended for personal use or experimentation. Use caution when modifying your kernel configuration, as it can impact system stability.  
Consider testing your changes in a non-production environment before deploying them to a critical system.
