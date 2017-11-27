
#$execPath="c:\Temp\Git-1.9.5-preview20150319.exe"
#$execPath="c:\Temp\Git-1.9.5-preview20150319111.exe"

## install git

Write-Host "install git..."

([WMICLASS]"win32_process").Create("cmd.exe /c  c:\Temp\Git-1.9.5-preview20150319.exe /VERYSILENT")

#Start-Sleep -s 50

