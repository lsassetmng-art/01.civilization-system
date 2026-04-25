#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

KICKOFF_MD="$ROOT/131.implementation-roadmap/131470_STATIC_ART_OS_PERSONA_REFERENCE_BOUNDED_ACTUALIZATION_KICKOFF_ROADMAP.md"
CANDIDATE_MD="$ROOT/131.implementation-roadmap/131471_STATIC_ART_OS_PERSONA_REFERENCE_FIRST_ACTUALIZATION_CANDIDATE_SELECTION_EXACT.md"
READINESS_MD="$ROOT/131.implementation-roadmap/131472_STATIC_ART_OS_PERSONA_REFERENCE_ACTUALIZATION_READINESS_CHECKLIST.md"
BOOTSTRAP_MD="$ROOT/131.implementation-roadmap/131473_STATIC_ART_OS_PERSONA_REFERENCE_BOOTSTRAP_SEQUENCE_FOR_AUTHORED_BLOCKS_AND_CONTROL_PLANE.md"
STOP_MD="$ROOT/131.implementation-roadmap/131474_STATIC_ART_OS_PERSONA_REFERENCE_FIRST_AUTHORED_BLOCK_STOP_CONDITIONS_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE BOUNDED ACTUALIZATION KICKOFF PORTAL
============================================================

Usage:
  bash 132.operations/132900_staticart_persona_reference_bounded_actualization_kickoff_portal.sh help
  bash 132.operations/132900_staticart_persona_reference_bounded_actualization_kickoff_portal.sh list
  bash 132.operations/132900_staticart_persona_reference_bounded_actualization_kickoff_portal.sh short
  bash 132.operations/132900_staticart_persona_reference_bounded_actualization_kickoff_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$KICKOFF_MD
$CANDIDATE_MD
$READINESS_MD
$BOOTSTRAP_MD
$STOP_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'BOUNDED ACTUALIZATION KICKOFF ROADMAP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$KICKOFF_MD"

  printf '\n============================================================\n'
  printf 'FIRST ACTUALIZATION CANDIDATE SELECTION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CANDIDATE_MD"

  printf '\n============================================================\n'
  printf 'ACTUALIZATION READINESS CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,220p' "$READINESS_MD"

  printf '\n============================================================\n'
  printf 'BOOTSTRAP SEQUENCE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$BOOTSTRAP_MD"

  printf '\n============================================================\n'
  printf 'FIRST AUTHORED BLOCK STOP CONDITIONS\n'
  printf '============================================================\n'
  sed -n '1,220p' "$STOP_MD"
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
