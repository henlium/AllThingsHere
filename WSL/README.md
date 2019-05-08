# About WSL

## What's WSL?

Google it, you dumb.

## Why WSL?

Windows and Linux both have their own strength. Windows is user-friendly for daily usage, like browsing the internet, watching videos, and so on. However, doing development on Windows is such a pain. For instance, setting up an environment for CUDA is so complicated, while you can do it with `apt-get install cuda` on Ubuntu (plus a little bit of driver configuration). With WSL, you can embrace the advantages of both side without dual-boot system or resource-comsuming virtual machine.

## Drawbacks

It doesn't support full Linux system call. You can't use some applications, like Docker (for now). Certain operations are slow, including those with intensive file system operation, like git clone, npm install...

Look forward to [WSL2](https://devblogs.microsoft.com/commandline/announcing-wsl-2/), which has a full Linux kernel under it and will resolve lots of current issues.

> For installation, refer to the [startup guide](./startup.md)
