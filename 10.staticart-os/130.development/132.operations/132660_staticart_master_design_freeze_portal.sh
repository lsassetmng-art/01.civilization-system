#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

FREEZE_MD="$ROOT/920.meta/096.master_design_freeze_pack/000001_STATIC_ART_OS_MASTER_DESIGN_FREEZE_MEMO.md"
MANIFEST_TXT="$ROOT/920.meta/096.master_design_freeze_pack/000002_STATIC_ART_OS_MASTER_DESIGN_FROZEN_BASELINE_MANIFEST.txt"
HANDOFF_MD="$ROOT/920.meta/096.master_design_freeze_pack/000003_STATIC_ART_OS_IMPLEMENTATION_BOUNDARY_HANDOFF_AFTER_DESIGN_FREEZE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART MASTER DESIGN FREEZE PORTAL
============================================================

Usage:
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh help
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh list
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh freeze
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh manifest
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh handoff
  bash 132.operations/132660_staticart_master_design_freeze_portal.sh short
TEXT
}

show_list() {
  cat <<TEXT
$FREEZE_MD
$MANIFEST_TXT
$HANDOFF_MD
TEXT
}

show_freeze() {
  sed -n '1,220p' "$FREEZE_MD"
}

show_manifest() {
  sed -n '1,240p' "$MANIFEST_TXT"
}

show_handoff() {
  sed -n '1,220p' "$HANDOFF_MD"
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER DESIGN FREEZE MEMO\n'
  printf '============================================================\n'
  sed -n '1,200p' "$FREEZE_MD"

  printf '\n============================================================\n'
  printf 'FROZEN BASELINE MANIFEST\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MANIFEST_TXT"

  printf '\n============================================================\n'
  printf 'IMPLEMENTATION BOUNDARY HANDOFF\n'
  printf '============================================================\n'
  sed -n '1,220p' "$HANDOFF_MD"
}

case "$MODE" in
  help|--help|-h)
    show_help
    ;;
  list)
    show_list
    ;;
  freeze)
    show_freeze
    ;;
  manifest)
    show_manifest
    ;;
  handoff)
    show_handoff
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
