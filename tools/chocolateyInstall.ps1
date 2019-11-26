$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.4.0/Alacritty-v0.4.0-windows-installer.msi"
$checksum = "2CC9F750C2A4096232F2F8AA9A5622947E70FC09F0A605BCA132801D3E998488CED4544ED69FCFE5C165D01320A94BEF565470851D94DD3FC3B9FCD20A8D66DA"

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