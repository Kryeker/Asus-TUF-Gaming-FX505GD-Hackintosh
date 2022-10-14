#Set-PSDebug -Trace 1

$path = "paket-files\OpenCoreLatestRelease\X64\EFI\"
$targetPath = "EFI\OC\Drivers\"
Copy-Item ($path + "BOOT\BOOTx64.efi") -Destination "EFI\BOOT" -Force
Copy-Item ($path + "OC\OpenCore.efi") -Destination "EFI\OC\" -Force

$drivers = Get-ChildItem ($path + "OC\Drivers\")

foreach ($driver in $drivers) {
    if ((Test-Path ($targetPath + $driver.Name ))  ) 
    {
        Write-Output ( "Update driver: " + "EFI\OC\Drivers\" + $driver.Name) 
        Copy-Item ($path + "OC\Drivers\" + $driver.Name) -Destination "EFI\OC\Drivers\" -Force
    }    
}