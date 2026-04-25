#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
AUDIT="$ROOT/080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md"
MATRIX="$ROOT/080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md"
ABOLISH="$ROOT/080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA RULE REVIEW
============================================================

Usage:
  bash 132.operations/132250_staticart_persona_rule_review.sh help
  bash 132.operations/132250_staticart_persona_rule_review.sh list
  bash 132.operations/132250_staticart_persona_rule_review.sh short
  bash 132.operations/132250_staticart_persona_rule_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$RULE
$AUDIT
$MATRIX
$ABOLISH
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'RULE\n'
  printf '============================================================\n'
  sed -n '1,120p' "$RULE"

  printf '\n============================================================\n'
  printf 'AUDIT CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,120p' "$AUDIT"

  printf '\n============================================================\n'
  printf 'SNAPSHOT REPLACEMENT MATRIX\n'
  printf '============================================================\n'
  sed -n '1,120p' "$MATRIX"

  printf '\n============================================================\n'
  printf 'DIRECT MUTATION ABOLISH LIST\n'
  printf '============================================================\n'
  sed -n '1,120p' "$ABOLISH"
}

show_paths() {
  printf '%s\n' "$RULE"
  printf '%s\n' "$AUDIT"
  printf '%s\n' "$MATRIX"
  printf '%s\n' "$ABOLISH"
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
