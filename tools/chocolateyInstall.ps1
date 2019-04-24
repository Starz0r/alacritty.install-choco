$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.1/Alacritty-v0.3.1-windows-installer.msi"
$checksum = "16E6AF3DFFBB076055FE9E2E462A5FD08838A947A023451C45791AAECC025B74697A5AEB265E79A2A1E50D2DC69A80BCD8E372CF68DBB97F8015A1E3E9C67274"

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