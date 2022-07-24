#!/bin/sh
#
# Installs Mozilla Thunderbird (stable release). To be used with Setup.sh
#
# Wait for download notice.
echo; echo "Please wait. I am downloading the latest stable version of Mozilla Thunderbird"; echo;
# 4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
sleep 4;
# Download.
wget -O ThunderbirdStable.tar.bz2 "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=linux64"; echo; echo;
# Begin install notice.
echo "Installing Mozilla Thunderbird";
# Checks if distro has default opt path and if not found adds opt with default permissions.
sudo mkdir -p -m 755 /opt ;
# Extracts to install path
sudo tar xjf ThunderbirdStable.tar.bz2 -C /opt/ ;
# Required permissions needed for Mozilla Thunderbird automatic update feature to work.
sudo chmod -R 757 /opt/thunderbird/ ;
# Start create icon script
chmod +x ./64bit/thunderbird64-icon.sh ; bash ./64bit/thunderbird64-icon.sh ;
# Give time for icon script to complete
sleep 2;
# Makes icon executable allowing it to run Thunderbird (which is also executable).
chmod +x Mozilla-Thunderbird.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
sudo cp Mozilla-Thunderbird.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Mozilla-Thunderbird.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Mozilla-Thunderbird.desktop"
done
echo -n;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
sudo mkdir -p /etc/skel/Desktop ; sudo cp Mozilla-Thunderbird.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm ThunderbirdStable.tar.bz2 ; rm Mozilla-Thunderbird.desktop ;
# Exit notice.
echo; echo; echo "Congratulations!";
echo "Mozilla Thunderbird is now installed onto your computer.";
echo "Mozilla Thunderbird will update itself.";
echo "Enjoy your e-mail."; echo ; echo ;
# exit
exit 0
