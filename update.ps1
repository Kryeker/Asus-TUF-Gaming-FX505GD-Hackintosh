Set-PSDebug -Trace 1
& dotnet tool restore
& dotnet paket update

Copy-Item paket-files\acidanthera\OcBinaryData\Resources -Destination EFI\OC -Recurse -Force