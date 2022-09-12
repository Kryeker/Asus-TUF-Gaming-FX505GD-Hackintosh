#Set-PSDebug -Trace 1
& dotnet tool update paket --prerelease
& dotnet tool restore
& dotnet paket update

Copy-Item paket-files\acidanthera\OcBinaryData\Resources -Destination EFI\OC -Recurse -Force
Copy-Item paket-files\RehabMan\OS-X-USB-Inject-All\XHCI-unsupported.kext -Destination EFI\OC\Kexts -Recurse -Force