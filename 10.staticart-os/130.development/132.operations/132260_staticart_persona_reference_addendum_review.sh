#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

DB_MD="$ROOT/121.db-implementation-prep/121260_STATIC_ART_OS_PERSONA_REFERENCE_DB_ADDENDUM.md"
API_MD="$ROOT/122.api-implementation-prep/122360_STATIC_ART_OS_PERSONA_REFERENCE_API_ADDENDUM.md"
UI_MD="$ROOT/123.ui-implementation-prep/123170_STATIC_ART_OS_PERSONA_REFERENCE_UI_ADDENDUM.md"
TEST_MD="$ROOT/124.test-implementation-prep/124170_STATIC_ART_OS_PERSONA_REFERENCE_TEST_ADDENDUM.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE ADDENDUM REVIEW
============================================================

Usage:
  bash 132.operations/132260_staticart_persona_reference_addendum_review.sh help
  bash 132.operations/132260_staticart_persona_reference_addendum_review.sh list
  bash 132.operations/132260_staticart_persona_reference_addendum_review.sh short
  bash 132.operations/132260_staticart_persona_reference_addendum_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$DB_MD
$API_MD
$UI_MD
$TEST_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'DB ADDENDUM\n'
  printf '============================================================\n'
  sed -n '1,120p' "$DB_MD"

  printf '\n============================================================\n'
  printf 'API ADDENDUM\n'
  printf '============================================================\n'
  sed -n '1,120p' "$API_MD"

  printf '\n============================================================\n'
  printf 'UI ADDENDUM\n'
  printf '============================================================\n'
  sed -n '1,120p' "$UI_MD"

  printf '\n============================================================\n'
  printf 'TEST ADDENDUM\n'
  printf '============================================================\n'
  sed -n '1,120p' "$TEST_MD"
}

show_paths() {
  printf '%s\n' "$DB_MD"
  printf '%s\n' "$API_MD"
  printf '%s\n' "$UI_MD"
  printf '%s\n' "$TEST_MD"
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
