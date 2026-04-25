#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

ROADMAP_MD="$ROOT/131.implementation-roadmap/131390_STATIC_ART_OS_MASTER_DESIGN_ROADMAP_FINAL.md"
MATRIX_MD="$ROOT/131.implementation-roadmap/131391_STATIC_ART_OS_MASTER_DESIGN_STATUS_MATRIX.md"
MEMO_MD="$ROOT/920.meta/095.staticart_master_design_integration/000001_STATIC_ART_OS_MASTER_DESIGN_INTEGRATION_COMPLETION_MEMO.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART MASTER DESIGN INTEGRATION PORTAL
============================================================

Usage:
  bash 132.operations/132650_staticart_master_design_integration_portal.sh help
  bash 132.operations/132650_staticart_master_design_integration_portal.sh list
  bash 132.operations/132650_staticart_master_design_integration_portal.sh roadmap
  bash 132.operations/132650_staticart_master_design_integration_portal.sh matrix
  bash 132.operations/132650_staticart_master_design_integration_portal.sh memo
  bash 132.operations/132650_staticart_master_design_integration_portal.sh short
TEXT
}

show_list() {
  cat <<TEXT
$ROADMAP_MD
$MATRIX_MD
$MEMO_MD
TEXT
}

show_roadmap() {
  sed -n '1,240p' "$ROADMAP_MD"
}

show_matrix() {
  sed -n '1,260p' "$MATRIX_MD"
}

show_memo() {
  sed -n '1,200p' "$MEMO_MD"
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER DESIGN ROADMAP FINAL\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ROADMAP_MD"

  printf '\n============================================================\n'
  printf 'MASTER DESIGN STATUS MATRIX\n'
  printf '============================================================\n'
  sed -n '1,260p' "$MATRIX_MD"

  printf '\n============================================================\n'
  printf 'MASTER DESIGN INTEGRATION COMPLETION MEMO\n'
  printf '============================================================\n'
  sed -n '1,180p' "$MEMO_MD"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  roadmap)
    show_roadmap
    ;;
  matrix)
    show_matrix
    ;;
  memo)
    show_memo
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
