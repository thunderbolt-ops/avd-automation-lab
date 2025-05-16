# fslogix.ps1 (dynamic version)
param(
    [string]$FslogixSharePath
)

New-Item -Path "HKLM:\\SOFTWARE\\FSLogix" -Force | Out-Null
New-Item -Path "HKLM:\\SOFTWARE\\FSLogix\\Profiles" -Force | Out-Null

Set-ItemProperty -Path "HKLM:\\SOFTWARE\\FSLogix\\Profiles" -Name "Enabled" -Value 1 -Type DWord
Set-ItemProperty -Path "HKLM:\\SOFTWARE\\FSLogix\\Profiles" -Name "VHDLocations" -Value $FslogixSharePath
Set-ItemProperty -Path "HKLM:\\SOFTWARE\\FSLogix\\Profiles" -Name "IsDynamic" -Value 1 -Type DWord
Set-ItemProperty -Path "HKLM:\\SOFTWARE\\FSLogix\\Profiles" -Name "VolumeType" -Value "vhdx"

