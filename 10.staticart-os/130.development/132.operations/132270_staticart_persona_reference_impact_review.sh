#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

IMPACT="$ROOT/080.policy/080210_STATIC_ART_OS_PERSONA_REFERENCE_IMPACT_REGISTER.md"
PRIORITY="$ROOT/080.policy/080220_STATIC_ART_OS_PERSONA_REFERENCE_UPDATE_PRIORITY_MATRIX.md"
NO_TOUCH="$ROOT/080.policy/080230_STATIC_ART_OS_PERSONA_REFERENCE_NO_TOUCH_AREAS.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE IMPACT REVIEW
============================================================

Usage:
  bash 132.operations/132270_staticart_persona_reference_impact_review.sh help
  bash 132.operations/132270_staticart_persona_reference_impact_review.sh list
  bash 132.operations/132270_staticart_persona_reference_impact_review.sh short
  bash 132.operations/132270_staticart_persona_reference_impact_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$IMPACT
$PRIORITY
$NO_TOUCH
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'IMPACT REGISTER\n'
  printf '============================================================\n'
  sed -n '1,140p' "$IMPACT"

  printf '\n============================================================\n'
  printf 'PRIORITY MATRIX\n'
  printf '============================================================\n'
  sed -n '1,120p' "$PRIORITY"

  printf '\n============================================================\n'
  printf 'NO TOUCH AREAS\n'
  printf '============================================================\n'
  sed -n '1,120p' "$NO_TOUCH"
}

show_paths() {
  printf '%s\n' "$IMPACT"
  printf '%s\n' "$PRIORITY"
  printf '%s\n' "$NO_TOUCH"
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
