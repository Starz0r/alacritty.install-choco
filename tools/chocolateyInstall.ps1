$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.0-rc1/Alacritty-v0.3.0-rc1-windows-installer.msi"
$checksum = "71d1e3aad17d2a0714fd65e7f49233d50ea0091dbb1d3a8e484a3169a381b0c9769e78f8dc84d41c90e3c757240e763a138596fbd0699a36c21b46c552189f42"

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