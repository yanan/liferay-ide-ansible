Write-Host "install editplus..."

#Start-Process "c:\Temp\epp380_64bit.exe" -ArgumentList "/s /sp-s" -wait

([WMICLASS]"win32_process").Create("cmd.exe /c c:\Temp\epp380_64bit.exe -s -sp-s")
