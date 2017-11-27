## win_chocolatey example to install jdk
## Start-Process "choco" -ArgumentList "install java.jdk"


$execPath="c:\Temp\jdk-7u75-windows-i586.exe"

## install jdk

Write-Host "new java folder..."

If(Test-Path c:\Java\jdk1.7.0_75_x32)
{
    Write-Host "folder already exists!"
}
else
{
    Write-Host "new folder and move"
    mkdir c:\\Java\\jdk1.7.0_75_x32
}

Start-Sleep -s 10
Write-Host "install java..."
try
{
    Start-Process "$execPath" -ArgumentList "/s INSTALLDIR=c:\Java\jdk1.7.0_75_x32" -wait -windowstyle Maximized
    Start-Sleep -s 30
}
catch
{
    $Error[0]
    return (-1)
}

#Move-Item "C:\Program Files (x86)\Java\jdk1.7.0_75\*" "C:\Java\jdk1.7.0_75_x32" -force
#Remove-Item "C:\Program Files (x86)\Java\" -recurse -force

## add to system environment

if ( $env:Path | Select-String "jdk1.7.0_75_x32")
{
    Write-Host "already add to path"
}
else
{
    if ( $env:Path | Select-String "JAVA_HOME")
    {
        Write-Host "already add to path"
    }
    else
    {
        Wrote-Host "add to Environment Variables"
        [Environment]::SetEnvironmentVariable( "JAVA_HOME","c:\Java\jdk1.7.0_75_x32", [System.EnvironmentVariableTarget]::Machine )
        [Environment]::SetEnvironmentVariable( "Path","%JAVA_HOME%\bin;"+$env:Path, [System.EnvironmentVariableTarget]::Machine ) 
    }
}

