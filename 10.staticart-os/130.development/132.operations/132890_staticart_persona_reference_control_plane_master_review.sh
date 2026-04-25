#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

MASTER_MD="$ROOT/131.implementation-roadmap/131465_STATIC_ART_OS_PERSONA_REFERENCE_IMPLEMENTATION_CONTROL_PLANE_MASTER_MAP.md"
MATRIX_MD="$ROOT/131.implementation-roadmap/131466_STATIC_ART_OS_PERSONA_REFERENCE_CANONICAL_ARTIFACT_MATRIX.md"
LIFECYCLE_MD="$ROOT/131.implementation-roadmap/131467_STATIC_ART_OS_PERSONA_REFERENCE_CONTROL_PLANE_LIFECYCLE_SUMMARY.md"
NEXT_MD="$ROOT/131.implementation-roadmap/131468_STATIC_ART_OS_PERSONA_REFERENCE_NEXT_ACTION_ROADMAP_AFTER_CONTROL_PLANE_DESIGN.md"
BOUNDARY_MD="$ROOT/131.implementation-roadmap/131469_STATIC_ART_OS_PERSONA_REFERENCE_NO_MORE_REDESIGN_BOUNDARY_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE CONTROL PLANE MASTER REVIEW
============================================================

Usage:
  bash 132.operations/132890_staticart_persona_reference_control_plane_master_review.sh help
  bash 132.operations/132890_staticart_persona_reference_control_plane_master_review.sh list
  bash 132.operations/132890_staticart_persona_reference_control_plane_master_review.sh short
  bash 132.operations/132890_staticart_persona_reference_control_plane_master_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$MASTER_MD
$MATRIX_MD
$LIFECYCLE_MD
$NEXT_MD
$BOUNDARY_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'CONTROL PLANE MASTER MAP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MASTER_MD"

  printf '\n============================================================\n'
  printf 'CANONICAL ARTIFACT MATRIX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MATRIX_MD"

  printf '\n============================================================\n'
  printf 'CONTROL PLANE LIFECYCLE SUMMARY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LIFECYCLE_MD"

  printf '\n============================================================\n'
  printf 'NEXT ACTION ROADMAP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$NEXT_MD"

  printf '\n============================================================\n'
  printf 'NO MORE REDESIGN BOUNDARY NOTE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$BOUNDARY_MD"
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
