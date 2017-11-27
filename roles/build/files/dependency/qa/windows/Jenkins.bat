@ echo off

%1 %2
ver|find "5.">nul&&goto :st
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :st","","runas",1)(window.close)&goto :eof

:st
copy "%~0" "%windir%\system32\"

title "start Jenkins..."

echo wscript.sleep 1000>%tmp%\delay.vbs&&%tmp%\delay.vbs&&del /q %tmp%\delay.vbs 

C:\Java\jdk1.7.0_75_x64\bin\java.exe -Dhudson.DNSMultiCast.disabled=true -Xms1024m -Xmx1024m -XX:PermSize=1024M -XX:PermSize=1024M -DJENKINS_HOME="c:/Jenkins" -jar "C:/Jenkins/jenkins.war" --httpPort="9091"

echo wscript.sleep 5000>%tmp%\delay.vbs&&%tmp%\delay.vbs&&del /q %tmp%\delay.vbs 
@pause

echo "started"
