# bitwarden-backup
A few simple scripts to automate bitwarden exports

## Setup
The ```bw_export.sh``` script depends on the [bw cli](https://bitwarden.com/help/article/cli/#download--install).

Place the included scipts into an usb stick, run ```chmod 755 autorun.sh``` and ```chmod +x bw_export.sh``` to make them executable. The bw cli executable needs to lie in the same directory. 
The bw cli does not support support exporting encrypted passwords, so it stores all exports to disk as plain csv or json. So I recommend storing the export on an encrypted colume of some sort, such as luks. 

## Usage
Edit the ```bw_export.sh``` script and change the bitwarden serverurl, email. The script will prompt you for your bitwarden password and export to the given backup directory.
