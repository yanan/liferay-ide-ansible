$file = "qftest-4.0.4-p1.zip"
$baseDir = "c:\Temp"
$destDir = "C:\\qfs"
$envPath = "C:\qfs\qftest\qftest-4.0.4"

$fileLocation = Join-Path $baseDir "\$file"
$destLocation = Join-Path $destDir "\\$file"

mkdir c:\\qfs\\qftest

Write-Host "Extracting $file to $destDir..."
$7zExe = Join-Path "C:/Program Files/7-Zip" '7z.exe'
Start-Process "$7zExe" -ArgumentList "x `"$fileLocation`" -y -aos -o`"$destDir`"" -Wait -NoNewWindow

if ( $env:Path | Select-String "qftest")
{
    Write-Host "already add to path"
}
else
{
    Write-Host "Add to system env..."
    [Environment]::SetEnvironmentVariable( "Path", "C:\qfs\qftest\qftest-4.0.4\bin;"+$env:Path,[System.EnvironmentVariableTarget]::Machine ) 
}




