Hardware profiles of computers I (love) use.

This helps to make custom kernels for my gentoo machines.

To make a new machine profile:

```
emerge -q sys-apps/pciutils
emerge -q app-arch/lzop app-arch/lz4
lspci > ~/lspci.txt
lsmod > ~/lsmod.txt
```
