# Log-SystemUptime.ps1
# Logs system uptime to a file on the desktop

$uptime = (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
$now = Get-Date
$elapsed = $now - $uptime
$log = "System Uptime as of ${now}:`n$($elapsed.Days) days, $($elapsed.Hours) hours, $($elapsed.Minutes) minutes"
Write-Host $log
$desktopPath = [Environment]::GetFolderPath("Desktop")
$log | Out-File -FilePath "$desktopPath\system_uptime_log.txt" -Encoding UTF8