# WiiLinkPatcherAndroid
Run the arm64 build of the WiiLink patcher through Termux on your Android device 

## WARNING - I AM NOT AFFILIATED WITH WIILINK. THIS IS AN UNOFFICIAL SCRIPT, PLEASE DON'T CONTACT THEM WITH ISSUES

### How it works
This project works through the Android app Termux, which allows the installation of a Debian Linux environment. All this script does is install the Debian environment, run the WiiLink patcher for arm64 linux inside of it, and copy the patched files to your phone's internal storage.

### Getting started
First install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/).
Go into the app info settings, and ensure Termux has the Files permission. This is needed, as otherwise the patched files can't be copied outside of the Debian sandbox. Next, enter Termux, and run:
```
pkg install wget
```
Finally, run:
```
wget https://raw.githubusercontent.com/AyeItsHarry/WiiLinkPatcherAndroid/main/wiilink.sh
```
Then, run
```
./wiilink.sh
```
You'll be in the patcher in no time!