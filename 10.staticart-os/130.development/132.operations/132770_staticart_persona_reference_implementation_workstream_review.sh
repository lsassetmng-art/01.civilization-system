#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

WORKSTREAM_MD="$ROOT/131.implementation-roadmap/131398_STATIC_ART_OS_PERSONA_REFERENCE_IMPLEMENTATION_WORKSTREAM_DECOMPOSITION_EXACT.md"
OWNERSHIP_MD="$ROOT/131.implementation-roadmap/131399_STATIC_ART_OS_PERSONA_REFERENCE_MODULE_OWNERSHIP_AND_TOUCHPOINT_MATRIX.md"
TOUCHMAP_MD="$ROOT/131.implementation-roadmap/131400_STATIC_ART_OS_PERSONA_REFERENCE_FILE_TOUCH_MAP_AND_NO_TOUCH_BOUNDARY_EXACT.md"
DELIVERY_MD="$ROOT/131.implementation-roadmap/131401_STATIC_ART_OS_PERSONA_REFERENCE_DELIVERY_HANDOFF_AND_REVIEW_SEQUENCE_EXACT.md"
CHECKLIST_MD="$ROOT/131.implementation-roadmap/131402_STATIC_ART_OS_PERSONA_REFERENCE_DEVELOPER_HANDOFF_CHECKLIST.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE IMPLEMENTATION WORKSTREAM REVIEW
============================================================

Usage:
  bash 132.operations/132770_staticart_persona_reference_implementation_workstream_review.sh help
  bash 132.operations/132770_staticart_persona_reference_implementation_workstream_review.sh list
  bash 132.operations/132770_staticart_persona_reference_implementation_workstream_review.sh short
  bash 132.operations/132770_staticart_persona_reference_implementation_workstream_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$WORKSTREAM_MD
$OWNERSHIP_MD
$TOUCHMAP_MD
$DELIVERY_MD
$CHECKLIST_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'IMPLEMENTATION WORKSTREAM DECOMPOSITION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$WORKSTREAM_MD"

  printf '\n============================================================\n'
  printf 'MODULE OWNERSHIP / TOUCHPOINT MATRIX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$OWNERSHIP_MD"

  printf '\n============================================================\n'
  printf 'FILE TOUCH MAP / NO-TOUCH BOUNDARY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TOUCHMAP_MD"

  printf '\n============================================================\n'
  printf 'DELIVERY / HANDOFF / REVIEW SEQUENCE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DELIVERY_MD"

  printf '\n============================================================\n'
  printf 'DEVELOPER HANDOFF CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,200p' "$CHECKLIST_MD"
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
