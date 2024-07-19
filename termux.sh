pkg install proot-distro -y
pd i ubuntu
pd sh ubuntu -- apt update && apt upgrade -y && apt install wget -y && wget https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/ubuntu.sh && chmod +x ubuntu.sh && ./ubuntu.sh
