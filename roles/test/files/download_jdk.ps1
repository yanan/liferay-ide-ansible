## download jdk
$source32 = "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-windows-i586.exe"
$destination32 = "c:\Temp\jdk-7u75-windows-i586.exe"
$source64 = "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-windows-x64.exe"
$destination64 = "c:\Temp\jdk-7u75-windows-x64.exe"

Write-Host "downlaod jdk executable file"
If(Test-Path c:\Temp\jdk-7u75-windows-i586.exe)
{
    Write-Host "Jdk32 executable file already exist!"
}
else
{
    Write-Host "Start downloading jdk32 executable file ..."
    try{
    
        $client = new-object System.Net.WebClient 
        $cookie = "oraclelicense=accept-securebackup-cookie"
        $client.Headers.Add([System.Net.HttpRequestHeader]::Cookie, $cookie)
        $client.DownloadFile($source32, $destination32)
	#$client.DownloadFile($source64, $destination64)
    }
    catch
    {
        $Error[0]
        return (-1)
    }
}
If(Test-Path c:\Temp\jdk-7u75-windows-x64.exe)
{
    Write-Host "Jdk64 executable file already exist!"
}
else
{
    Write-Host "Start downloading jdk64 executable file ..."
    try{
    
        $client = new-object System.Net.WebClient 
        $cookie = "oraclelicense=accept-securebackup-cookie"
        $client.Headers.Add([System.Net.HttpRequestHeader]::Cookie, $cookie)
	$client.DownloadFile($source64, $destination64)
    }
    catch
    {
        $Error[0]
        return (-1)
    }
}
