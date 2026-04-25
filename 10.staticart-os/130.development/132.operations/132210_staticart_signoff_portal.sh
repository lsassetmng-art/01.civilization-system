#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

SIGNOFF="$ROOT/920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md"
BLOCKER="$ROOT/920.meta/056.signoff_pack/000002_STATIC_ART_OS_BLOCKER_REGISTER.md"
RISK="$ROOT/920.meta/056.signoff_pack/000003_STATIC_ART_OS_RISK_REGISTER.md"
CHANGELOG="$ROOT/920.meta/056.signoff_pack/000004_STATIC_ART_OS_CHANGELOG_TEMPLATE.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART SIGNOFF PORTAL
============================================================

Usage:
  bash 132.operations/132210_staticart_signoff_portal.sh help
  bash 132.operations/132210_staticart_signoff_portal.sh list
  bash 132.operations/132210_staticart_signoff_portal.sh short
  bash 132.operations/132210_staticart_signoff_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$SIGNOFF
$BLOCKER
$RISK
$CHANGELOG
$CHECKLIST
$MEMO
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'SIGNOFF MEMO TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,120p' "$SIGNOFF"

  printf '\n============================================================\n'
  printf 'BLOCKER REGISTER\n'
  printf '============================================================\n'
  sed -n '1,120p' "$BLOCKER"

  printf '\n============================================================\n'
  printf 'RISK REGISTER\n'
  printf '============================================================\n'
  sed -n '1,120p' "$RISK"

  printf '\n============================================================\n'
  printf 'CHANGELOG TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,120p' "$CHANGELOG"
}

show_paths() {
  printf '%s\n' "$SIGNOFF"
  printf '%s\n' "$BLOCKER"
  printf '%s\n' "$RISK"
  printf '%s\n' "$CHANGELOG"
  printf '%s\n' "$CHECKLIST"
  printf '%s\n' "$MEMO"
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
  paths)
    show_paths
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
