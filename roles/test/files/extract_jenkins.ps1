$file = "jenkins-1.594.zip"
$baseDir = "C:\Temp"
$fileLocation = Join-Path $baseDir "\$file"

Write-Host "Extracting $file to $baseDir..."
$7zExe = Join-Path "C:/Program Files/7-Zip" '7z.exe'
Start-Process "$7zExe" -ArgumentList "x `"$fileLocation`" -y -aos -o`"$baseDir`"" -Wait -NoNewWindow


