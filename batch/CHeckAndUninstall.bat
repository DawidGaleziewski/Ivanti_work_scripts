
dism /online /get-packages | findstr 4011626 >> C:\%userdomain%.txt 
wusa /uninstall /kb:4054022 /quiet /norestart 
dism /online /get-packages | findstr 4011626 >> C:\%userdomain%.txt 
END