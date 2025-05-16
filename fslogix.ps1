# ==========================================
# fslogix.ps1 (Dynamic Version)
# ==========================================

param(
    [string]$FslogixSharePath
)

Write-Host "🟢 Configuring FSLogix with path: $FslogixSharePath"

New-Item -Path "HKLM:\SOFTWARE\FSLogix" -Force | Out-Null
New-Item -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Force | Out-Null

Set-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "Enabled" -Value 1 -Type DWord
Set-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "VHDLocations" -Value $FslogixSharePath
Set-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "IsDynamic" -Value 1 -Type DWord
Set-ItemProperty -Path "HKLM:\SOFTWARE\FSLogix\Profiles" -Name "VolumeType" -Value "vhdx" -Type String

Write-Host "✅ FSLogix profile path set dynamically to $FslogixSharePath"
