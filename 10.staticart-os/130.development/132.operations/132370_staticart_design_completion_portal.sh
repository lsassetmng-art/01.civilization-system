#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

COMPLETION="$ROOT/920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md"
MILESTONE="$ROOT/920.meta/070.design_organization_completion/000002_STATIC_ART_OS_DESIGN_ORGANIZATION_MILESTONE_LEDGER.md"
BOUNDARY="$ROOT/920.meta/070.design_organization_completion/000003_STATIC_ART_OS_NEXT_WORK_BOUNDARY_NOTE.md"
LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
PERSONA_PORTAL="$ROOT/132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART DESIGN COMPLETION PORTAL
============================================================

Usage:
  bash 132.operations/132370_staticart_design_completion_portal.sh help
  bash 132.operations/132370_staticart_design_completion_portal.sh list
  bash 132.operations/132370_staticart_design_completion_portal.sh short
  bash 132.operations/132370_staticart_design_completion_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$COMPLETION
$MILESTONE
$BOUNDARY
$LANDING
$PERSONA_PORTAL
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'DESIGN ORGANIZATION COMPLETION MEMO\n'
  printf '============================================================\n'
  sed -n '1,180p' "$COMPLETION"

  printf '\n============================================================\n'
  printf 'MILESTONE LEDGER\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MILESTONE"

  printf '\n============================================================\n'
  printf 'NEXT WORK BOUNDARY NOTE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$BOUNDARY"
}

show_paths() {
  show_list
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
