#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

EVENT_MD="$ROOT/060.integration/060160_STATIC_ART_OS_PERSONA_REFERENCE_EVENT_CONTRACT_EXACT.md"
DB_MD="$ROOT/121.db-implementation-prep/121270_STATIC_ART_OS_PERSONA_REFERENCE_DB_EXACT_SCHEMA.md"
API_MD="$ROOT/122.api-implementation-prep/122370_STATIC_ART_OS_PERSONA_REFERENCE_API_EXACT_PAYLOAD.md"
UI_MD="$ROOT/123.ui-implementation-prep/123180_STATIC_ART_OS_PERSONA_REFERENCE_UI_STATEFLOW_EXACT.md"
TEST_MD="$ROOT/124.test-implementation-prep/124180_STATIC_ART_OS_PERSONA_REFERENCE_TEST_EXACTNESS.md"
MASTER_MD="$ROOT/131.implementation-roadmap/131370_STATIC_ART_OS_PERSONA_REFERENCE_EXACTNESS_MASTER_SUMMARY.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE EXACTNESS REVIEW
============================================================

Usage:
  bash 132.operations/132610_staticart_persona_reference_exactness_review.sh help
  bash 132.operations/132610_staticart_persona_reference_exactness_review.sh list
  bash 132.operations/132610_staticart_persona_reference_exactness_review.sh short
  bash 132.operations/132610_staticart_persona_reference_exactness_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$EVENT_MD
$DB_MD
$API_MD
$UI_MD
$TEST_MD
$MASTER_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER SUMMARY\n'
  printf '============================================================\n'
  sed -n '1,160p' "$MASTER_MD"

  printf '\n============================================================\n'
  printf 'DB EXACT SCHEMA\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DB_MD"

  printf '\n============================================================\n'
  printf 'API EXACT PAYLOAD\n'
  printf '============================================================\n'
  sed -n '1,220p' "$API_MD"

  printf '\n============================================================\n'
  printf 'EVENT CONTRACT EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$EVENT_MD"

  printf '\n============================================================\n'
  printf 'UI STATEFLOW EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$UI_MD"

  printf '\n============================================================\n'
  printf 'TEST EXACTNESS\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TEST_MD"
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
