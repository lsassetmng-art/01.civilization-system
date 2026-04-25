#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

REGISTRY="$ROOT/920.meta/086.execution_run_archive_pack/000001_STATIC_ART_OS_EXECUTION_RUN_REGISTRY.md"
LATEST="$ROOT/920.meta/086.execution_run_archive_pack/000002_STATIC_ART_OS_LATEST_EXECUTION_RUN_NOTE.md"
REFRESH="$ROOT/132.operations/132550_staticart_refresh_execution_run_archive.sh"
RUN_BASE="$ROOT/920.meta/085.execution_runs"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EXECUTION RUN ARCHIVE PORTAL
============================================================

Usage:
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh help
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh refresh
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh list
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh latest
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh registry
  bash 132.operations/132560_staticart_execution_run_archive_portal.sh runs
TEXT
}

show_list() {
  cat <<TEXT
$REGISTRY
$LATEST
$REFRESH
$RUN_BASE
TEXT
}

show_latest() {
  sed -n '1,180p' "$LATEST"
}

show_registry() {
  sed -n '1,260p' "$REGISTRY"
}

show_runs() {
  find "$RUN_BASE" -mindepth 1 -maxdepth 1 -type d | sort
}

run_refresh() {
  bash "$REFRESH"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  refresh)
    run_refresh
    ;;
  list)
    show_list
    ;;
  latest)
    show_latest
    ;;
  registry)
    show_registry
    ;;
  runs)
    show_runs
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
