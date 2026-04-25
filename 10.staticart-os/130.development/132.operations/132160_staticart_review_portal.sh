#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
INDEX="$ROOT/000_STATIC_ART_OS_INDEX.md"
OVERVIEW="$ROOT/000_STATIC_ART_OS_OVERVIEW.md"
ROADMAP="$ROOT/000_STATIC_ART_OS_ROADMAP.md"
HANDOFF="$ROOT/132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"
INTEGRATED="$ROOT/000000_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_INTEGRATED.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART REVIEW PORTAL
============================================================

Usage:
  bash 132.operations/132160_staticart_review_portal.sh help
  bash 132.operations/132160_staticart_review_portal.sh list
  bash 132.operations/132160_staticart_review_portal.sh short
  bash 132.operations/132160_staticart_review_portal.sh integrated-head

Modes:
  help            : show this help
  list            : print key review file paths
  short           : show the head of the main review files
  integrated-head : show the head of the integrated standalone document
TEXT
}

show_list() {
  cat <<TEXT
$PORTAL
$INDEX
$OVERVIEW
$ROADMAP
$HANDOFF
$CHECKLIST
$MEMO
$INTEGRATED
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'PORTAL\n'
  printf '============================================================\n'
  sed -n '1,60p' "$PORTAL"

  printf '\n============================================================\n'
  printf 'INDEX\n'
  printf '============================================================\n'
  sed -n '1,60p' "$INDEX"

  printf '\n============================================================\n'
  printf 'OVERVIEW\n'
  printf '============================================================\n'
  sed -n '1,60p' "$OVERVIEW"

  printf '\n============================================================\n'
  printf 'ROADMAP\n'
  printf '============================================================\n'
  sed -n '1,80p' "$ROADMAP"

  printf '\n============================================================\n'
  printf 'HANDOFF\n'
  printf '============================================================\n'
  sed -n '1,100p' "$HANDOFF"

  printf '\n============================================================\n'
  printf 'FINAL CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,100p' "$CHECKLIST"
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
  short)
    show_short
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
