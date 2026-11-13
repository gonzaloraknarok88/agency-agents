#!/usr/bin/env bash
# Instala el Equipo Merlink (agentes curados de agency-agents) en Claude Code (Mac/Linux/Git Bash).
# Solo copia archivos .md a ~/.claude/agents. No descarga nada ni usa internet.
# Uso: ./merlink/instalar-equipo-merlink.sh        (equipo curado)
#      ./merlink/instalar-equipo-merlink.sh --todos (todos los agentes del repo)
set -euo pipefail
dir="$(cd "$(dirname "$0")" && pwd)"
repo="$(dirname "$dir")"
dest="${HOME}/.claude/agents"
mkdir -p "$dest"
n=0
if [[ "${1:-}" == "--todos" ]]; then
  while IFS= read -r f; do cp "$f" "$dest/"; n=$((n+1)); done < <(
    grep -rl --include='*.md' '^name:' "$repo" | grep -vE '/(\.git|merlink|scripts|integrations|examples|strategy)/')
else
  while IFS= read -r f; do [[ -n "$f" ]] && cp "$repo/$f" "$dest/" && n=$((n+1)); done < "$dir/lista-agentes.txt"
fi
echo "Listo: $n agentes copiados a $dest"
