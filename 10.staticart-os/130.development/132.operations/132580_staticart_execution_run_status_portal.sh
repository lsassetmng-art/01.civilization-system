#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

STATUS="$ROOT/920.meta/087.execution_run_status_pack/000001_STATIC_ART_OS_EXECUTION_RUN_STATUS_BOARD.md"
COMPARE="$ROOT/920.meta/087.execution_run_status_pack/000002_STATIC_ART_OS_LATEST_VS_PREVIOUS_RUN_COMPARISON_NOTE.md"
REFRESH="$ROOT/132.operations/132570_staticart_refresh_execution_run_status.sh"
RUN_BASE="$ROOT/920.meta/085.execution_runs"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EXECUTION RUN STATUS PORTAL
============================================================

Usage:
  bash 132.operations/132580_staticart_execution_run_status_portal.sh help
  bash 132.operations/132580_staticart_execution_run_status_portal.sh refresh
  bash 132.operations/132580_staticart_execution_run_status_portal.sh status
  bash 132.operations/132580_staticart_execution_run_status_portal.sh compare
  bash 132.operations/132580_staticart_execution_run_status_portal.sh runs
  bash 132.operations/132580_staticart_execution_run_status_portal.sh short
TEXT
}

show_status() {
  sed -n '1,220p' "$STATUS"
}

show_compare() {
  sed -n '1,220p' "$COMPARE"
}

show_runs() {
  find "$RUN_BASE" -mindepth 1 -maxdepth 1 -type d | sort
}

show_short() {
  printf '\n============================================================\n'
  printf 'RUN STATUS BOARD\n'
  printf '============================================================\n'
  sed -n '1,220p' "$STATUS"

  printf '\n============================================================\n'
  printf 'LATEST VS PREVIOUS COMPARISON\n'
  printf '============================================================\n'
  sed -n '1,220p' "$COMPARE"
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
  status)
    show_status
    ;;
  compare)
    show_compare
    ;;
  runs)
    show_runs
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
