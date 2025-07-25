# Path와 DestinationPath 인자를 이용하여 백업 압축 파일을 만드는 스크립트
Param(
    [string]$Path = "./app",
    [string]$DestinationPath = "./"
)

$date = Get-Date -format "yyyy-MM-dd"
Compress-Archive -Path $Path -CompressionLevel "Fastest" -DestinationPath $($DestinationPath + "backup-" + $date)
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"