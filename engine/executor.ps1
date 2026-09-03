# ============================================================
# ULTRON — EXECUTOR
# ============================================================

function Invoke-Execution {
    param($plan)
    Write-Host "🟢 Ultron: Executing plan..." -ForegroundColor Cyan
    foreach ($step in $plan) {
        Write-Host "🟢 Ultron: Step: $step" -ForegroundColor Yellow
        Start-Sleep -Seconds 1
    }
    Write-Host "🟢 Ultron: Plan executed." -ForegroundColor Green
}
