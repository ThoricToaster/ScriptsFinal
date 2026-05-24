#!/bin/bash
#inspected by blake
#date 23/05/2026
#total errors found 4
#error 1 syntax error User@dd is not a valid command should be useradd
#error 2 logic error passwd command used incorrectly should pipe password in
#error 3 logic error missing -m flag to create home directory for user
#error 4 logic error no group creation or user assignment to group

read -p "enter username: " user
read -p "enter password: " pwrd
read -p "enter group: " group

#create the group
groupadd $group

#create user account
useradd -m -s /bin/bash $user

#set password
echo "$user:$pwrd" | chpasswd

#assign user to group
usermod -aG $group $user

echo "account created and assigned to group successfully"
