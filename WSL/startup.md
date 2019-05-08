# Startup Guide

## Requirements

- Windows 10 version 1607 or above
- 64-bit version of Windows

## Installation

1. Open PowerShell as Administrator and run:
  ```
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
  ```
2. Restart your computer
3. Install your preferred distro(s) from Microsoft Store
4. Initialize the newly installed distro
  - Launch it from Start menu or anywhere else you like (On Windows Server, you can do it by `<distro>.exe` from the distro installation folder)
  - You'll be prompted to create a new user account
5. Update & upgrade your packages

## References

- [Docs](https://docs.microsoft.com/en-us/windows/wsl/)
- [Dev Blog](https://devblogs.microsoft.com/commandline/)
- [Troubleshooting](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting)
