#!/bin/bash
#inspected by blake
#date 23/05/2026
#total errors found 4
#error 1 syntax error User@dd is not a valid command should be useradd
#error 2 logic error passwd command used incorrectly should pipe password in
#error 3 logic error no group creation or user assignment to group

read -p "enter username: " user
read -p "enter password: " pwrd
read -p "enter group: " group

#create the group
groupadd $group

#create user account
useradd $user

#formats the username and password and sets them to account made
echo "$user:$pwrd" | chpasswd

#adds just created user account to group without removing from other groups
usermod -aG $group $user

echo "account created and assigned to group"
