$packageName = "alacritty.install"
$url = "https://github.com/alacritty/alacritty/releases/download/v0.4.1/Alacritty-v0.4.1-windows-installer.msi"
$checksum = "C8CA50E614F89CB6C29A28518361E7D090B53BD9BCD7979AF472BC3D588C42F02F8040D38A7F0747A2E0F22209866CE1B492D650846ED1BC9BE902B7A3CDC2F9"

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