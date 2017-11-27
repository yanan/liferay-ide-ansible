Write-Host "install 7zip..."

#Start-Process "C:\Temp\7z920-x64.msi" -ArgumentList "/QN" -wait

([WMICLASS]"win32_process").Create("cmd.exe /c C:\\Temp\\7z920-x64.msi /qn")
