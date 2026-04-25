#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY_MD="$ROOT/131.implementation-roadmap/131421_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_AUTHORING_POLICY.md"
WORKFLOW_MD="$ROOT/131.implementation-roadmap/131422_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_AUTHORING_WORKFLOW_EXACT.md"
GENRULE_MD="$ROOT/131.implementation-roadmap/131423_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_GENERATION_RULE_EXACT.md"
VALIDATION_MD="$ROOT/131.implementation-roadmap/131424_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_VALIDATION_LINT_AND_APPROVAL_EXACT.md"
HANDOFF_MD="$ROOT/131.implementation-roadmap/131425_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_HANDOFF_AND_STORAGE_RULE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE BLOCK AUTHORING REVIEW
============================================================

Usage:
  bash 132.operations/132810_staticart_persona_reference_block_authoring_review.sh help
  bash 132.operations/132810_staticart_persona_reference_block_authoring_review.sh list
  bash 132.operations/132810_staticart_persona_reference_block_authoring_review.sh short
  bash 132.operations/132810_staticart_persona_reference_block_authoring_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$POLICY_MD
$WORKFLOW_MD
$GENRULE_MD
$VALIDATION_MD
$HANDOFF_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'AUTHORING POLICY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$POLICY_MD"

  printf '\n============================================================\n'
  printf 'AUTHORING WORKFLOW EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$WORKFLOW_MD"

  printf '\n============================================================\n'
  printf 'GENERATION RULE EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GENRULE_MD"

  printf '\n============================================================\n'
  printf 'VALIDATION / LINT / APPROVAL EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$VALIDATION_MD"

  printf '\n============================================================\n'
  printf 'HANDOFF AND STORAGE RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$HANDOFF_MD"
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
