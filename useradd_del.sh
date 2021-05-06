

#!/bin/bash
if [ `id -u` = 'root' ]
then
echo welcome to user managment script
else
echo "u are not authorized user "
fi
while :
do
echo "press 1 to add  "
echo "press 2 to del "
echo "press q to quit "
read ch
case $ch in
1)
echo "............................"
echo " enter user name u want to add  "
read name
useradd $name
echo 'centos' | passwd --stdin $name
continue
;;

2)
echo "............................"
echo " enter user name u want to del  "
read name
userdel $name
echo " user $name is been delet"
continue
;;
q) 
exit;;
         esac
done

                        
