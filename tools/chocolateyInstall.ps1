$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.0/Alacritty-v0.3.0-windows-installer.msi"
$checksum = "B86043210BC4CDE2AD2552A43C11F0A81265C70E9F4F374F66AA383698E9A43027D7F516BCDE320755C371AAF168EB5F7DB996F4511184DA44E5FDBA5B1CE101"

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