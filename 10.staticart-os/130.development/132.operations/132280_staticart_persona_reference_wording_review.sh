#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

BUNDLE="$ROOT/080.policy/080240_STATIC_ART_OS_PERSONA_REFERENCE_EXACT_WORDING_INSERTION_BUNDLE.md"
ORDER="$ROOT/080.policy/080250_STATIC_ART_OS_PERSONA_REFERENCE_WORDING_INSERTION_ORDER_NOTE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE WORDING REVIEW
============================================================

Usage:
  bash 132.operations/132280_staticart_persona_reference_wording_review.sh help
  bash 132.operations/132280_staticart_persona_reference_wording_review.sh list
  bash 132.operations/132280_staticart_persona_reference_wording_review.sh short
  bash 132.operations/132280_staticart_persona_reference_wording_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$BUNDLE
$ORDER
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'WORDING INSERTION BUNDLE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$BUNDLE"

  printf '\n============================================================\n'
  printf 'INSERTION ORDER NOTE\n'
  printf '============================================================\n'
  sed -n '1,140p' "$ORDER"
}

show_paths() {
  printf '%s\n' "$BUNDLE"
  printf '%s\n' "$ORDER"
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
