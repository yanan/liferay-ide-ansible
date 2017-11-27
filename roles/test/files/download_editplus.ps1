$source = "https://www.editplus.com/ftp/epp380_64bit.exe"
$destination = "c:\Temp\epp380_64bit.exe"

Write-Host "downlaod editplus executable file"
If(Test-Path c:\Temp\epp380_64bit.exe)
{
    Write-Host "Editplus executable file already exist!"
}
else
{
    Write-Host "Start downloading editplus executable file ..."
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
