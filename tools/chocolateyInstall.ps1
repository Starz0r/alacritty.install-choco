$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.3/Alacritty-v0.3.3-windows-installer.msi"
$checksum = "11e4c3703d43564a9aa3d4cdca1ca43c215487c0e137c2e11bc8fbc41a8f5aa298d038901b40407e17940eb2b92e9600a417abba25ce24a46b933f13aeefa375"

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