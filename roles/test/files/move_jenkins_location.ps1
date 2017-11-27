Start-Sleep -s 30
mkdir c:\Jenkins
Move-Item "C:\Program Files (x86)\Jenkins\*" "C:\Jenkins" -force
Remove-Item "C:\Program Files (x86)\Jenkins\" -recurse -force
