#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

SESSION="$ROOT/920.meta/084.execution_logbook_pack/000001_STATIC_ART_OS_EXECUTION_SESSION_LOG_TEMPLATE.md"
POSTRUN="$ROOT/920.meta/084.execution_logbook_pack/000002_STATIC_ART_OS_POST_RUN_SUMMARY_TEMPLATE.md"
EVIDENCE="$ROOT/920.meta/084.execution_logbook_pack/000003_STATIC_ART_OS_EXECUTION_EVIDENCE_CAPTURE_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EXECUTION LOGBOOK PORTAL
============================================================

Usage:
  bash 132.operations/132530_staticart_execution_logbook_portal.sh help
  bash 132.operations/132530_staticart_execution_logbook_portal.sh list
  bash 132.operations/132530_staticart_execution_logbook_portal.sh short
TEXT
}

show_list() {
  cat <<TEXT
$SESSION
$POSTRUN
$EVIDENCE
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'EXECUTION SESSION LOG TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,200p' "$SESSION"

  printf '\n============================================================\n'
  printf 'POST RUN SUMMARY TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$POSTRUN"

  printf '\n============================================================\n'
  printf 'EXECUTION EVIDENCE CAPTURE NOTE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$EVIDENCE"
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
