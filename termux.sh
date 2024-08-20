rm -rf /sdcard/WiiLink
mkdir /sdcard/WiiLink
cd /sdcard/WiiLink
pkg install proot-distro -y
pd i ubuntu
pd sh ubuntu -- apt update
pd sh ubuntu -- apt upgrade -y
pd sh ubuntu -- apt install wget -y
pd sh ubuntu -- wget -O /sdcard/WiiLink/ubuntu.sh https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/ubuntu.sh
pd sh ubuntu -- chmod +x /sdcard/WiiLink/ubuntu.sh
pd sh ubuntu -- /sdcard/WiiLink/ubuntu.sh
