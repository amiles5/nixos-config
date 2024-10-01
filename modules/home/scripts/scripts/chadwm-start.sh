#!/usr/bin/env zsh

# VM name
vm_name="arcolinux-chadwm"
export LIBVIRT_DEFAULT_URI="qemu:///system"

# change workspace
hyprctl dispatch workspace 6

virsh start ${vm_name}
virt-viewer -f -w -a ${vm_name}
