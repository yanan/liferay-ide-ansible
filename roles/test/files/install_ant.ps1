$file = "apache-ant-1.9.4-bin.zip"
$baseDir = "C:\Temp"
$destDir = "C:\\java"
$envPath = "C:\Java\apache-ant-1.9.4"

$fileLocation = Join-Path $baseDir "\$file"
$destLocation = Join-Path $destDir "\\$file"

mkdir c:\\Java

Write-Host "Extracting $file to $destDir..."
$7zExe = Join-Path "C:/Program Files/7-Zip" '7z.exe'
Start-Process "$7zExe" -ArgumentList "x `"$fileLocation`" -y -aos -o`"$destDir`"" -Wait -NoNewWindow

if ( $env:Path | Select-String "apache-ant")
{
    Write-Host "already add to path"
}
else
{
    if ( $env:Path | Select-String "ANT_HOME")
    {
        Write-Host "already add to path"
    }
    else
    {
        Wrote-Host "add to Environment Variables"
        [Environment]::SetEnvironmentVariable( "ANT_HOME","C:\Java\apache-ant-1.9.4", [System.EnvironmentVariableTarget]::Machine )
        [Environment]::SetEnvironmentVariable( "Path","%ANT_HOME%\bin;"+$env:Path,[System.EnvironmentVariableTarget]::Machine ) 
    }
}


