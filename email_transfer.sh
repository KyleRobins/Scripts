#!/bin/bash

# Source server details
source_server="15.235.51.182"
source_username="michael@bga-k.com"
source_password="Conn3ct2022@!"

# Destination server details
destination_server="mail.bga-k.com"
destination_username="michael@bga-k.com"
destination_password="Conn3ct2022@!"

# Folders to transfer (modify as needed)
folders=("INBOX" "Sent" "Drafts" "Spam")

# Perform the email transfer for each folder
for folder in "${folders[@]}"; do
    imapsync --host1 "$source_server" --user1 "$source_username" --password1 "$source_password" \
             --host2 "$destination_server" --user2 "$destination_username" --password2 "$destination_password" \
             --folder "$folder" --regextrans2 "s/michael@bga-k.com/michael\@bga-k.com/" \
             --noauthmd5 --ssl1 --ssl2 --timeout 180
done
