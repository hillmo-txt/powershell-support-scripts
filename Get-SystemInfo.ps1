# Get-SystemInfo.ps1
# Displays basic system information

Write-Host "===== System Information =====" -ForegroundColor Cyan

Write-Host "`nComputer Name: " $env:COMPUTERNAME
Write-Host "User Name: " $env:USERNAME
Write-Host "OS Version: " (Get-CimInstance Win32_OperatingSystem).Caption
Write-Host "OS Architecture: " (Get-CimInstance Win32_OperatingSystem).OSArchitecture
Write-Host "System Uptime (hrs): " ([math]::Round((Get-CimInstance Win32_OperatingSystem).LastBootUpTime.ToUniversalTime().Subtract((Get-Date).ToUniversalTime()).TotalHours * -1, 2))
Write-Host "Total RAM (GB): " ([math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB, 2))
Write-Host "`n==============================" -ForegroundColor Cyan