$packageName = "alacritty.install"
$url = "https://github.com/jwilm/alacritty/releases/download/v0.3.2/Alacritty-v0.3.2-windows-installer.msi"
$checksum = "5F9BE545599DD2D22BC16E1E1A71850D672B57EF7C79D6E4D33CCBC7F28D8156A1705631392953CFF78B4D2668F75E638EAD0561A924195B4C11AC059E73178F"

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