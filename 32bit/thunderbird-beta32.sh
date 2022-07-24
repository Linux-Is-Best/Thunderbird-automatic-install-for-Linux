#!/bin/sh
#
# Installs Mozilla Thunderbid 32-bit (beta release). To be used with Setup.sh
#
# Wait for download notice.
echo "Please wait. I am downloading the latest version of Thunderbird Beta"; echo;
# 4-second wait before beginning download. Gives user time to read the above sentence and understand what is happening.
sleep 4;
# Download.
wget -O ThunderbirdBeta32.tar.bz2 "https://download.mozilla.org/?product=thunderbird-beta-latest-ssl&os=linux"; echo; echo;
# Begin install notice.
echo "Installing Thunderbird Beta"
# Checks if distro has default opt path and if not found adds opt with default permissions.
sudo mkdir -p -m 755 /opt ;
# Path where to be installed.
sudo mkdir /opt/thunderbird-beta-32bit ;
# Extracts to install path.
sudo tar xjf ThunderbirdBeta32.tar.bz2 -C /opt/thunderbird-beta-32bit/ ;
# Required permissions needed for Mozilla Thunderbird automatic update feature to work.
sudo chmod -R 757 /opt/thunderbird-beta-32bit/thunderbird/ ;
# Start create icon script
chmod +x ./32bit/beta32-icon.sh ; bash ./32bit/beta32-icon.sh ;
# Give time for icon script to complete
sleep 2;
# Makes icon executable allowing it to run Thunderbird (which is also executable).
chmod +x Thunderbird-Beta-32bit.desktop ;
# Adds icon to application menu (xfce, gnome, cinnamon, mate, deepin, etc...).
sudo cp Thunderbird-Beta-32bit.desktop /usr/share/applications ;
# Copies desktop icon to all user desktops and grants them ownership (it is their desktop after all).
for destdir in /home/*/Desktop/; do
    cp Thunderbird-Beta-32bit.desktop "$destdir" &&
    chown --reference="$destdir" "$destdir/Thunderbird-Beta-32bit.desktop"
done
echo -n;
# Adds a desktop icon to all FUTURE new login users (assuming you make any).
sudo mkdir -p /etc/skel/Desktop ; sudo cp Thunderbird-Beta-32bit.desktop /etc/skel/Desktop ;
# Removes the temporary files no longer needed.
rm ThunderbirdBeta32.tar.bz2 ; rm Thunderbird-Beta-32bit.desktop ;
# Exit notice.
echo; echo; echo "Congratulations!";
echo "Thunderbird Beta is now installed onto your computer.";
echo "Thunderbird Beta will update itself.";
echo "Enjoy your e-mail."; echo; echo;
# exit
exit 0
