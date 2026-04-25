#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

COMPLETION="$ROOT/920.meta/094.persona_reference_exactness_completion/000001_STATIC_ART_OS_PERSONA_REFERENCE_EXACTNESS_COMPLETION_MEMO.md"
MILESTONE="$ROOT/920.meta/094.persona_reference_exactness_completion/000002_STATIC_ART_OS_PERSONA_REFERENCE_EXACTNESS_MILESTONE_LEDGER.md"
BOUNDARY="$ROOT/920.meta/094.persona_reference_exactness_completion/000003_STATIC_ART_OS_PERSONA_REFERENCE_NEXT_STEP_BOUNDARY_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE EXACTNESS COMPLETION PORTAL
============================================================

Usage:
  bash 132.operations/132640_staticart_persona_reference_exactness_completion_portal.sh help
  bash 132.operations/132640_staticart_persona_reference_exactness_completion_portal.sh list
  bash 132.operations/132640_staticart_persona_reference_exactness_completion_portal.sh short
  bash 132.operations/132640_staticart_persona_reference_exactness_completion_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$COMPLETION
$MILESTONE
$BOUNDARY
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'COMPLETION MEMO\n'
  printf '============================================================\n'
  sed -n '1,180p' "$COMPLETION"

  printf '\n============================================================\n'
  printf 'MILESTONE LEDGER\n'
  printf '============================================================\n'
  sed -n '1,200p' "$MILESTONE"

  printf '\n============================================================\n'
  printf 'NEXT STEP BOUNDARY NOTE\n'
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
