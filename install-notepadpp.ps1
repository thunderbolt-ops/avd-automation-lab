# Download Notepad++ Installer
Invoke-WebRequest -Uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest/download/npp.8.6.4.Installer.x64.exe" -OutFile "npp-installer.exe"

# Install silently
Start-Process -FilePath "npp-installer.exe" -ArgumentList "/S" -Wait

# Clean up
Remove-Item "npp-installer.exe"
