# 파워쉘에서 Path 인자 받는 스크립트
Param(
    $Path
)

New-Item $Path
Write-Host "File $Path was created"