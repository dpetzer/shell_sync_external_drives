# shell_sync_external_drives
Synchronise External USB Drive 1 to 2 and 3 if 2 and 3 are connected and mounted

Computer has three external drive connected. 

fstab is used to mount them.

crontab triggers a script twice per day to copy the contents of disk 1 to 2 and 3 if 2 and 3 are connected.

This allows for periodically swapping disk 2 and 3 so that there is an offline copy.

