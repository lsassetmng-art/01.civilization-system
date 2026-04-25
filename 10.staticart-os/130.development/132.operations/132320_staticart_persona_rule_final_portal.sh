#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
AUDIT="$ROOT/080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md"
MATRIX="$ROOT/080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md"
ABOLISH="$ROOT/080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md"
INSERTION="$ROOT/080.policy/080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md"

DB_ADD="$ROOT/121.db-implementation-prep/121260_STATIC_ART_OS_PERSONA_REFERENCE_DB_ADDENDUM.md"
API_ADD="$ROOT/122.api-implementation-prep/122360_STATIC_ART_OS_PERSONA_REFERENCE_API_ADDENDUM.md"
UI_ADD="$ROOT/123.ui-implementation-prep/123170_STATIC_ART_OS_PERSONA_REFERENCE_UI_ADDENDUM.md"
TEST_ADD="$ROOT/124.test-implementation-prep/124170_STATIC_ART_OS_PERSONA_REFERENCE_TEST_ADDENDUM.md"

IMPACT="$ROOT/080.policy/080210_STATIC_ART_OS_PERSONA_REFERENCE_IMPACT_REGISTER.md"
PRIORITY="$ROOT/080.policy/080220_STATIC_ART_OS_PERSONA_REFERENCE_UPDATE_PRIORITY_MATRIX.md"
NOTOUCH="$ROOT/080.policy/080230_STATIC_ART_OS_PERSONA_REFERENCE_NO_TOUCH_AREAS.md"
WORDING="$ROOT/080.policy/080240_STATIC_ART_OS_PERSONA_REFERENCE_EXACT_WORDING_INSERTION_BUNDLE.md"
WORDORDER="$ROOT/080.policy/080250_STATIC_ART_OS_PERSONA_REFERENCE_WORDING_INSERTION_ORDER_NOTE.md"

RECHECK_SCOPE="$ROOT/132.operations/132285_STATIC_ART_OS_PERSONA_RULE_FINAL_RECHECK_SCOPE.md"
RECHECK_RUNNER="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

PORTAL_NOTE="$ROOT/132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md"
CHECKLIST="$ROOT/132.operations/132310_STATIC_ART_OS_PERSONA_RULE_FINAL_CHECKLIST.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA RULE FINAL PORTAL
============================================================

Usage:
  bash 132.operations/132320_staticart_persona_rule_final_portal.sh help
  bash 132.operations/132320_staticart_persona_rule_final_portal.sh list
  bash 132.operations/132320_staticart_persona_rule_final_portal.sh short
  bash 132.operations/132320_staticart_persona_rule_final_portal.sh recheck
  bash 132.operations/132320_staticart_persona_rule_final_portal.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$RULE
$AUDIT
$MATRIX
$ABOLISH
$INSERTION
$DB_ADD
$API_ADD
$UI_ADD
$TEST_ADD
$IMPACT
$PRIORITY
$NOTOUCH
$WORDING
$WORDORDER
$RECHECK_SCOPE
$RECHECK_RUNNER
$PORTAL_NOTE
$CHECKLIST
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'FINAL PORTAL NOTE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$PORTAL_NOTE"

  printf '\n============================================================\n'
  printf 'FINAL CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,180p' "$CHECKLIST"
}

run_recheck() {
  if [ ! -f "$RECHECK_RUNNER" ]; then
    echo "ERROR: missing runner -> $RECHECK_RUNNER"
    exit 1
  fi
  bash "$RECHECK_RUNNER" quick
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
  recheck)
    run_recheck
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
