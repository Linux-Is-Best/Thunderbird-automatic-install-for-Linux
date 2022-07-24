#!/bin/sh
#
# Thunderbird automatic install for Linux
#
# -- This file to be used with Setup.sh
#
while true :
do
 echo;
 echo "   6 4 b i t - M E N U";
 echo;
 echo "1. Mozill Thunderbird";
 echo "2. Thunderbird Beta";
 echo "3. Thunderbird Daily";
 echo "4. Thunderbird for Organizations";
 echo "5. Install ALL 64-bit editions";
 echo "6. Exit";
 echo;
 echo "Please enter option [1 - 6]";
 read -r opt
 case $opt in
# Stable
  1) clear; echo; echo "You selected Mozilla Thunderbird"; echo; chmod +x ./64bit/thunderbird64.sh; ./64bit/thunderbird64.sh; break ;;
# Beta
  2) clear; echo; echo "You selected Thunderbird Beta"; echo; chmod +x ./64bit/thunderbird_beta64.sh; ./64bit/thunderbird-beta64.sh; break ;;
# Nightly
  3) clear; echo; echo "You selected Thunderbird Daily"; echo; chmod +x ./64bit/thunderbird-nighly64.sh; ./64bit/thunderbird-nightly64.sh; break ;;
# Extended support release
  4) clear; echo; echo "You selected Thunderbird for Organizations"; echo; chmod +x ./64bit/thunderbird-esr64.sh; ./64bit/thunderbird-esr64.sh; break ;;
# Everything
  5) clear; echo; echo "You selected to install ALL 64-bit editions"; echo; chmod +x ./64bit/thunderbird-all.sh; ./64bit/thunderbird-all.sh; break ;;
# User exit
  6) clear; echo; echo "Goodbye, $USER"; echo; exit 1;;
# invalid option notice
  *) echo "$opt is an invaild option. Please select option between 1-6 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;     
# done     
esac
done
