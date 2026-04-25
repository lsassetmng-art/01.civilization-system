#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY_MD="$ROOT/131.implementation-roadmap/131408_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_POLICY.md"
TEMPLATE_MD="$ROOT/131.implementation-roadmap/131409_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_UNIT_TEMPLATE_EXACT.md"
SEQUENCE_MD="$ROOT/131.implementation-roadmap/131410_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_NAMING_AND_SEQUENCE_EXACT.md"
SAFETY_MD="$ROOT/131.implementation-roadmap/131411_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_SAFETY_IDEMPOTENCY_AND_ROLLBACK_EXACT.md"
CHECKLIST_MD="$ROOT/131.implementation-roadmap/131412_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_REVIEW_CHECKLIST.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE ACTUAL BLOCK DESIGN REVIEW
============================================================

Usage:
  bash 132.operations/132790_staticart_persona_reference_actual_block_design_review.sh help
  bash 132.operations/132790_staticart_persona_reference_actual_block_design_review.sh list
  bash 132.operations/132790_staticart_persona_reference_actual_block_design_review.sh short
  bash 132.operations/132790_staticart_persona_reference_actual_block_design_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$POLICY_MD
$TEMPLATE_MD
$SEQUENCE_MD
$SAFETY_MD
$CHECKLIST_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'ACTUAL BLOCK POLICY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$POLICY_MD"

  printf '\n============================================================\n'
  printf 'ACTUAL BLOCK UNIT TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TEMPLATE_MD"

  printf '\n============================================================\n'
  printf 'NAMING AND SEQUENCE EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SEQUENCE_MD"

  printf '\n============================================================\n'
  printf 'SAFETY / IDEMPOTENCY / ROLLBACK EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SAFETY_MD"

  printf '\n============================================================\n'
  printf 'ACTUAL BLOCK REVIEW CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CHECKLIST_MD"
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
