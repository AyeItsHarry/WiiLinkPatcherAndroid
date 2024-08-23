DIRECTORY=/storage/emulated/0/WiiLink
DOWNLOAD_URL=$(curl -L -s https://api.github.com/repos/WiiLink24/WiiLink24-Patcher/releases/latest | grep -o -E "https://(.*)WiiLinkPatcher_Linux-ARM64(.*)")
DOWNLOAD_URL=${DOWNLOAD_URL::-1}
apt install libicu-dev -y
wget -O WLP $DOWNLOAD_URL
chmod +x WLP
if [ -d "WAD" ]; then
    echo "Clearing up previous WADs..."
    rm -r WAD
fi
if [ -d "apps" ]; then
    echo "Clearing up previous apps..."
    rm -r apps
fi
if [ -d "$DIRECTORY" ]; then
    echo "Clearing up previous WiiLink folder..."
    rm -r $DIRECTORY
fi
./WLP
if [ ! -d "WAD" ] && [ ! -d "apps" ]; then
    echo "There are no files to copy!"
else
    mkdir $DIRECTORY
    echo Copying patched WADs...
    cp -r WAD/ $DIRECTORY/WAD
    echo Copying apps...
    cp -r apps/ $DIRECTORY/apps
    echo "Done. You can find the WADs and apps folders in the WiiLink folder on your device's internal storage. For use on a real Wii console, these folders should be copied to the root of your SD card. Thanks for using my patcher, I hope you have a nice day."
fi