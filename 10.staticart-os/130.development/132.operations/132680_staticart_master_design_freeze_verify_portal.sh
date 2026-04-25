#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

NOTE_MD="$ROOT/920.meta/097.master_design_freeze_verify_only/000001_STATIC_ART_OS_MASTER_DESIGN_FREEZE_VERIFY_ONLY_NOTE.md"
RUNNER_SH="$ROOT/132.operations/132670_staticart_master_design_freeze_verify_only.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART MASTER DESIGN FREEZE VERIFY PORTAL
============================================================

Usage:
  bash 132.operations/132680_staticart_master_design_freeze_verify_portal.sh help
  bash 132.operations/132680_staticart_master_design_freeze_verify_portal.sh list
  bash 132.operations/132680_staticart_master_design_freeze_verify_portal.sh note
  bash 132.operations/132680_staticart_master_design_freeze_verify_portal.sh run
TEXT
}

show_list() {
  cat <<TEXT
$NOTE_MD
$RUNNER_SH
TEXT
}

show_note() {
  sed -n '1,180p' "$NOTE_MD"
}

run_verify() {
  bash "$RUNNER_SH"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  note)
    show_note
    ;;
  run)
    run_verify
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
