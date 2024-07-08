pkg update
pkg upgrade -y
pkg install proot-distro -y
proot-distro install debian
proot-distro login debian -- apt update
proot-distro login debian -- apt upgrade -y
proot-distro login debian -- apt install wget libicu72 -y
proot-distro login debian -- wget -O WLP https://github.com/WiiLink24/WiiLink24-Patcher/releases/download/v2.0.3/WiiLinkPatcher_Linux-ARM64_v203
proot-distro login debian -- chmod +x WLP
proot-distro login debian -- ./WLP
proot-distro login debian -- mkdir /sdcard/WiiLink
echo Copying patched WADs...
proot-distro login debian -- cp -r WAD/ /sdcard/WiiLink/WAD
echo Copying apps...
proot-distro login debian -- cp -r apps/ /sdcard/WiiLink/apps
echo "Done. You can find the WADs and apps folders in the WiiLink folder on your device's internal storage. For use on a real Wii console, these folders should be copied to the root of your SD card. Thanks for using my patcher, I hope you have a nice day."