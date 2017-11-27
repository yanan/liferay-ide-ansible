$file = "apache-maven-3.2.3-bin.zip"
$baseDir = "C:\Temp"
$destDir = "C:\\java"
$envPath = "C:\Java\apache-maven-3.2.5"

$fileLocation = Join-Path $baseDir "\$file"
$destLocation = Join-Path $destDir "\\$file"

mkdir c:\\Java

Write-Host "Extracting $file to $destDir..."
#$7zExe = Join-Path "C:/Program Files/7-Zip" '7z.exe'
#Start-Process "$7zExe" -ArgumentList "x `"$fileLocation`" -y -aos -o`"$destDir`"" -Wait -NoNewWindow

if ( $env:Path | Select-String "apache-maven")
{
    Write-Host "already add to path"
}
else
{
    if ( $env:Path | Select-String "MAVEN_HOME")
    {
        Write-Host "already add to path"
    }
    else
    {
        Write-Host "Add to system env..."
	[Environment]::SetEnvironmentVariable( "MAVEN_HOME","$envPath", [System.EnvironmentVariableTarget]::Machine )
	[Environment]::SetEnvironmentVariable( "Path",  "%MAVEN_HOME%\bin;"+$env:Path, [System.EnvironmentVariableTarget]::Machine)
    }
}

Write-Host "make .m2 folder"
mkdir C:\\.m2


