$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.0-rc3/Alacritty-v0.3.0-rc3-windows-installer.msi"
$checksum = "A403888DCB411524173A95FDF051D66BA71935B46D48514CD191C0E56A0406330B346A97CC252C4B7ADA50C866BFA56084EA220AF0C1369985A1CB71B83D72C1"

$ErrorActionPreference = 'Stop'
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
 
$packageArgs = @{
    PackageName    = $packageName
    FileType       = "msi"
    SoftwareName   = "Alacritty"
    Url64bit       = $url
	Checksum64     = $checksum
	ChecksumType64 = "sha512"
    SilentArgs     = "/qn /norestart"
    ValidExitCodes = @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs