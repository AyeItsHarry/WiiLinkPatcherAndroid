rm -rf /sdcard/WiiLink
mkdir /sdcard/WiiLink
cd /sdcard/WiiLink
pkg install proot-distro -y
pd i ubuntu
pd sh ubuntu -- apt update
pd sh ubuntu -- apt upgrade -y
pd sh ubuntu -- apt install wget -y
pd sh ubuntu -- wget https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/ubuntu.sh
pd sh ubuntu -- chmod +x ubuntu.sh
pd sh ubuntu -- ./ubuntu.sh
