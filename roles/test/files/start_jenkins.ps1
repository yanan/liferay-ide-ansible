Write-Host "make dir..."
mkdir c:\\Jenkins

Write-Host "start jenkins..."
#$pro=Start-Process "java" -ArgumentList " -DJENKINS_HOME`=`"c:\Jenkins`" -jar `"C:\Jenkins\jenkins.war`" --httpPort`=9091" -Wait -NoNewWindow
([WMICLASS]"win32_process").Create("cmd.exe /c  java -DJENKINS_HOME`=`"c:\Jenkins`" -jar `"C:\Jenkins\jenkins.war`" --httpPort`=9091")

#Start-Sleep -s 10

#Write-Host "wait for process"
#Wait-Process -id $pro.ID -timeout 120000


