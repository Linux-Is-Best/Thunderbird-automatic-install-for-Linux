#!/bin/sh
#
# Thunderbird automatic install for Linux
#
# -- This file to be used with Setup.sh
#
while true :
do
 echo;
 echo;
 echo "   I have good news and bad news."
 echo "   The good news is I can still help you install Thunderbird Daily."
 echo "   What is the bad news is?"
 echo;
 echo "   Mozilla does not provide a direct universal link for me to download Thunderbird Daily for you."
 echo "   You'll need to download it from the URL and save the tar.bz2 archive in the same folder as Setup.sh"
 echo "   Once done, press #1, and I can continue."
 echo;
 echo "   And YES, once installed, Thundbird Daily will still automatically update."
 echo;
 echo "   Download from here: "
 echo "   https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central-l10n/ "
 echo;
#
# For those who read the code
#
# Thunderbird stable can be found here: https://download.mozilla.org/?product=thunderbird-latest-SSL&os=linux
# Thunderbird beta can be found here: https://download.mozilla.org/?product=thunderbird-beta-latest-SSL&os=linux
#
# Firefox Nightly, for example, works just as easily: https://download.mozilla.org/?product=firefox-nightly-latest-SSL&os=linux
#
# As does everything else made by Mozilla. Simple and easy. But not the daily builds of Thunderbird. 
# It's Mozilla's only build that they like to be different about. If someone knows someone in Mozilla, please look into this.
# Making things easier to use and install is my goal. And the more people who use Mozilla products, the better.
#
 echo;
 echo "1. I'm ready. Let's continue with the install.... ";
 echo "2. Exit ";
 echo;
 echo "Please enter option [1 - 2]";
 read -r opt
 case $opt in
# Continue
  1) clear; echo; echo "Awesome! I am now installing Thundbird Daily..."; echo; chmod +x ./64bit/daily2.sh; ./64bit/daily2.sh; break ;;
# User exit
  2) clear; echo; echo "Goodbye, $USER "; echo; exit 1;;
# invalid option notice
  *) echo "$opt is an invaild option. Please select option between 1-2 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;
# done
esac
done
