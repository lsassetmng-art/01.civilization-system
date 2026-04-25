#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
REGISTRY="$ROOT/920.meta/078.launcher_registry_and_smokecheck/000001_STATIC_ART_OS_LAUNCHER_REGISTRY.md"
NOTE="$ROOT/920.meta/078.launcher_registry_and_smokecheck/000002_STATIC_ART_OS_LAUNCHER_SMOKE_CHECK_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART LAUNCHER REGISTRY
============================================================

Usage:
  bash 132.operations/132460_staticart_launcher_registry.sh help
  bash 132.operations/132460_staticart_launcher_registry.sh list
  bash 132.operations/132460_staticart_launcher_registry.sh short
TEXT
}

show_list() {
  cat <<TEXT
$REGISTRY
$NOTE
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'LAUNCHER REGISTRY\n'
  printf '============================================================\n'
  sed -n '1,260p' "$REGISTRY"

  printf '\n============================================================\n'
  printf 'SMOKE CHECK NOTE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$NOTE"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  short)
    show_short
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
