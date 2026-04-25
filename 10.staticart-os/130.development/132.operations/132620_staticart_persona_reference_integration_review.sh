#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

INT_MD="$ROOT/060.integration/060170_STATIC_ART_OS_PERSONA_REFERENCE_EXACTNESS_INTEGRATION_POLICY.md"
DB_MD="$ROOT/121.db-implementation-prep/121280_STATIC_ART_OS_PERSONA_REFERENCE_DB_IMPLEMENTATION_INSERTION_PLAN.md"
API_MD="$ROOT/122.api-implementation-prep/122380_STATIC_ART_OS_PERSONA_REFERENCE_API_IMPLEMENTATION_INSERTION_PLAN.md"
UI_MD="$ROOT/123.ui-implementation-prep/123190_STATIC_ART_OS_PERSONA_REFERENCE_UI_IMPLEMENTATION_INSERTION_PLAN.md"
TEST_MD="$ROOT/124.test-implementation-prep/124190_STATIC_ART_OS_PERSONA_REFERENCE_TEST_IMPLEMENTATION_INSERTION_PLAN.md"
SEQ_MD="$ROOT/131.implementation-roadmap/131380_STATIC_ART_OS_PERSONA_REFERENCE_IMPLEMENTATION_SEQUENCE_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE INTEGRATION REVIEW
============================================================

Usage:
  bash 132.operations/132620_staticart_persona_reference_integration_review.sh help
  bash 132.operations/132620_staticart_persona_reference_integration_review.sh list
  bash 132.operations/132620_staticart_persona_reference_integration_review.sh short
  bash 132.operations/132620_staticart_persona_reference_integration_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$INT_MD
$DB_MD
$API_MD
$UI_MD
$TEST_MD
$SEQ_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'INTEGRATION POLICY\n'
  printf '============================================================\n'
  sed -n '1,180p' "$INT_MD"

  printf '\n============================================================\n'
  printf 'DB INSERTION PLAN\n'
  printf '============================================================\n'
  sed -n '1,200p' "$DB_MD"

  printf '\n============================================================\n'
  printf 'API INSERTION PLAN\n'
  printf '============================================================\n'
  sed -n '1,200p' "$API_MD"

  printf '\n============================================================\n'
  printf 'UI INSERTION PLAN\n'
  printf '============================================================\n'
  sed -n '1,200p' "$UI_MD"

  printf '\n============================================================\n'
  printf 'TEST INSERTION PLAN\n'
  printf '============================================================\n'
  sed -n '1,180p' "$TEST_MD"

  printf '\n============================================================\n'
  printf 'IMPLEMENTATION SEQUENCE EXACT\n'
  printf '============================================================\n'
  sed -n '1,200p' "$SEQ_MD"
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
