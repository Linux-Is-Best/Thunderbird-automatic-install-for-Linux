#!/bin/sh
#
# Thunderbird automatic install for Linux
#
# -- This file to be used with Setup.sh
#
while true :
do
 echo;
 echo "   3 2 b i t - M E N U";
 echo;
 echo "1. Mozilla Thunderbird";
 echo "2. Thunderbird Beta";
 echo "3. Thunderbird Daily";
 echo "4. Exit";
 echo;
 echo "Please enter option [1 - 4]";
 read -r opt
 case $opt in
# Stable
  1) clear; echo; echo "You selected Mozilla Thunderbird"; echo; chmod +x ./32bit/thunderbird32.sh; ./32bit/thunderbird32.sh; break ;;
# Beta
  2) clear; echo; echo "You selected Thunderbird Beta"; echo; chmod +x ./32bit/thunderbird-beta32.sh; ./32bit/thunderbird-beta32.sh; break ;;
# Daily
  3) clear; echo; echo "You selected Thunderbird Daily"; echo; chmod +x ./32bit/thunderbird-daily32.sh; ./32bit/thunderbird-daily32.sh; break ;;
# User exit
  4) clear; echo; echo "Goodbye, $USER"; echo; exit 1;;
# invalid option notice
  *) echo "$opt is an invaild option. Please select option between 1-4 only";
     echo "Press the [enter] key to continue. . .";
     read -r enterKey;     
# done     
esac
done
