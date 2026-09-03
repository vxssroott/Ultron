# ============================================================
# ULTRON — CONTROL INTERFACE (Jarvis Mode)
# ============================================================

Write-Host "🟢 Ultron Online." -ForegroundColor Cyan
Write-Host "Commands: help, status, deploy, exit" -ForegroundColor Gray

while ($true) {
    $input = Read-Host "> "
    if ($input -eq "exit") { Write-Host "🟢 Ultron: Shutting down." -ForegroundColor Red; break }
    if ($input -eq "help") { Write-Host "Available: help, status, deploy <payload>, run <goal>, exit"; continue }
    if ($input -eq "status") { Write-Host "🟢 Ultron: All systems operational." -ForegroundColor Green; continue }

    Write-Host "🟢 Ultron: Processing command: $input" -ForegroundColor Yellow
    Write-Host "🟢 Ultron: Command executed. Ready." -ForegroundColor Green
}
