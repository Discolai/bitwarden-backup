#!/bin/sh

serverurl=""
email=""

backupstore="backups/"

exportfile=""$backupstore"bw_export_"$(date "+%d.%m.%Y-%H:%M")".json"


./bw config server $serverurl

stty -echo
printf "Password: "
read PASSWORD
stty echo
printf "\n"

token="$(./bw login "$email" "$PASSWORD" --raw)"
export BW_SESSION=$token

mkdir -p $backupstore

./bw export $PASSWORD --format json --output $exportfile

./bw logout
