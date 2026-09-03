. .\engine\core.ps1 
Write-Host "Ultron: Online." -ForegroundColor Cyan 
while ($true) { 
    $input = Read-Host "> " 
    if ($input -eq "exit") { break } 
    Invoke-Ultron -goal $input 
} 
