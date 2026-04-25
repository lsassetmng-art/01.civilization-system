#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

SUMMARY="$ROOT/920.meta/050.standalone_closeout/000001_STATIC_ART_OS_STANDALONE_CLOSEOUT_SUMMARY.md"
LEDGER="$ROOT/920.meta/050.standalone_closeout/000002_STATIC_ART_OS_STANDALONE_ARTIFACT_LEDGER.md"
CHEATSHEET="$ROOT/920.meta/050.standalone_closeout/000003_STATIC_ART_OS_STANDALONE_EXECUTION_CHEATSHEET.md"
PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
HANDOFF="$ROOT/132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
INTEGRATED="$ROOT/000000_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_INTEGRATED.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART CLOSEOUT PORTAL
============================================================

Usage:
  bash 132.operations/132170_staticart_closeout_portal.sh help
  bash 132.operations/132170_staticart_closeout_portal.sh list
  bash 132.operations/132170_staticart_closeout_portal.sh summary
  bash 132.operations/132170_staticart_closeout_portal.sh review-order
  bash 132.operations/132170_staticart_closeout_portal.sh integrated-head
TEXT
}

show_list() {
  cat <<TEXT
$SUMMARY
$LEDGER
$CHEATSHEET
$PORTAL
$HANDOFF
$CHECKLIST
$INTEGRATED
TEXT
}

show_summary() {
  printf '\n============================================================\n'
  printf 'CLOSEOUT SUMMARY\n'
  printf '============================================================\n'
  sed -n '1,120p' "$SUMMARY"

  printf '\n============================================================\n'
  printf 'EXECUTION CHEATSHEET\n'
  printf '============================================================\n'
  sed -n '1,140p' "$CHEATSHEET"
}

show_review_order() {
  printf '\n============================================================\n'
  printf 'REVIEW ORDER FILES\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LEDGER"
}

show_integrated_head() {
  printf '\n============================================================\n'
  printf 'INTEGRATED HEAD\n'
  printf '============================================================\n'
  sed -n '1,120p' "$INTEGRATED"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  summary)
    show_summary
    ;;
  review-order)
    show_review_order
    ;;
  integrated-head)
    show_integrated_head
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
