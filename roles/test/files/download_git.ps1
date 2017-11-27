$source = "https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20150319/Git-1.9.5-preview20150319.exe"
$destination = "c:\Temp\Git-1.9.5-preview20150319.exe"

Write-Host "downlaod jdk executable file"
If(Test-Path c:\Temp\Git-1.9.5-preview20150319.exe)
{
    Write-Host "Git executable file already exist!"
}
else
{
    Write-Host "Start downloading git executable file ..."
    try{
    	$client = new-object System.Net.WebClient
        $client.DownloadFile($source, $destination)
    }
    catch
    {
        $Error[0]
        return (-1)
    }
}
