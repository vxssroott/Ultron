# ============================================================
# ULTRON — INTERFACE (control.ps1)
# ============================================================

. .\engine\core.ps1
. .\engine\executor.ps1

Write-Host "🟢 Ultron: Online." -ForegroundColor Cyan
Write-Host "Available: help, status, deploy <payload>, run <goal>, exit" -ForegroundColor Gray

while ($true) {
    $input = Read-Host "> "
    if ($input -eq "exit") { Write-Host "🟢 Ultron: Shutting down." -ForegroundColor Red; break }
    if ($input -eq "help") { Write-Host "Available: help, status, deploy <payload>, run <goal>, exit"; continue }
    if ($input -eq "status") { Show-Status; continue }
    if ($input -match "^deploy (.+)$") { Deploy-Payload $matches[1]; continue }
    if ($input -match "^run (.+)$") { Invoke-Ultron -goal $matches[1]; continue }
    Write-Host "🟢 Ultron: Command not recognised." -ForegroundColor Red
}
