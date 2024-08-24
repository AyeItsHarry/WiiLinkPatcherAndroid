if [ ! -r "/storage/emulated/0" ]; then
    termux-setup-storage
fi
pkg install proot-distro -y
if [ ! -d "/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/ubuntu" ]; then
    pd i ubuntu
fi
pd sh ubuntu -- apt update
pd sh ubuntu -- apt upgrade -y
pd sh ubuntu -- apt install wget -y
pd sh ubuntu -- wget -O ubuntu.sh https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/ubuntu.sh
pd sh ubuntu -- chmod +x ubuntu.sh
pd sh ubuntu -- ./ubuntu.sh
