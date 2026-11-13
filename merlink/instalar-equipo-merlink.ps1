# Instala el Equipo Merlink (agentes curados de agency-agents) en Claude Code, en Windows.
# Solo copia archivos .md a %USERPROFILE%\.claude\agents. No descarga nada ni usa internet.
# Uso (desde la carpeta del repo):  powershell -ExecutionPolicy Bypass -File merlink\instalar-equipo-merlink.ps1
# Para instalar los ~230 agentes completos agrega:  -Todos
param([switch]$Todos)
$ErrorActionPreference = "Stop"
$repo = Split-Path -Parent $PSScriptRoot
$destino = Join-Path $env:USERPROFILE ".claude\agents"
New-Item -ItemType Directory -Force -Path $destino | Out-Null
if ($Todos) {
  $archivos = Get-ChildItem -Path $repo -Recurse -Filter *.md |
    Where-Object { $_.FullName -notmatch '\\(\.git|merlink|scripts|integrations|examples|strategy)\\' -and (Select-String -Path $_.FullName -Pattern '^name:' -Quiet) }
} else {
  $archivos = Get-Content (Join-Path $PSScriptRoot "lista-agentes.txt") | Where-Object { $_ } | ForEach-Object { Get-Item (Join-Path $repo $_) }
}
foreach ($a in $archivos) { Copy-Item $a.FullName -Destination $destino -Force }
Write-Host "Listo: $($archivos.Count) agentes copiados a $destino"
