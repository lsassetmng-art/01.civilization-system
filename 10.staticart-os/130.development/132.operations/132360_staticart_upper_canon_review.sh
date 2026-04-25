#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

SCOPE="$ROOT/080.policy/080260_STATIC_ART_OS_UPPER_CANON_ALIGNMENT_SCOPE.md"
MATRIX="$ROOT/080.policy/080270_STATIC_ART_OS_UPPER_CANON_ALIGNMENT_MATRIX.md"
ACTION="$ROOT/080.policy/080280_STATIC_ART_OS_UPPER_CANON_ALIGNMENT_ACTION_LIST.md"

RULES_SRC="/mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md"
FOUNDATION_SRC="/mnt/data/000000_FOUNDATION_CANONICAL.md"
PERSONA_SRC="/mnt/data/000000_PERSONA_OS_INTEGRATED_CANONICAL_REBUILT_20260417_054407.md"
COMMON_SRC="/mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md"
STATICART_SRC="/mnt/data/00_STATIC_ART_OS_INTEGRATED.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART UPPER CANON REVIEW
============================================================

Usage:
  bash 132.operations/132360_staticart_upper_canon_review.sh help
  bash 132.operations/132360_staticart_upper_canon_review.sh list
  bash 132.operations/132360_staticart_upper_canon_review.sh short
  bash 132.operations/132360_staticart_upper_canon_review.sh sources
TEXT
}

show_list() {
  cat <<TEXT
$SCOPE
$MATRIX
$ACTION
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'ALIGNMENT SCOPE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$SCOPE"

  printf '\n============================================================\n'
  printf 'ALIGNMENT MATRIX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MATRIX"

  printf '\n============================================================\n'
  printf 'ACTION LIST\n'
  printf '============================================================\n'
  sed -n '1,180p' "$ACTION"
}

show_sources() {
  printf '%s\n' "$RULES_SRC"
  printf '%s\n' "$FOUNDATION_SRC"
  printf '%s\n' "$PERSONA_SRC"
  printf '%s\n' "$COMMON_SRC"
  printf '%s\n' "$STATICART_SRC"
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
  sources)
    show_sources
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
