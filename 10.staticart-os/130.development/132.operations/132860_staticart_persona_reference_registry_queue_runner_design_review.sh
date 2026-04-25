#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY_MD="$ROOT/131.implementation-roadmap/131448_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_QUEUE_RUNNER_POLICY.md"
INIT_MD="$ROOT/131.implementation-roadmap/131449_STATIC_ART_OS_PERSONA_REFERENCE_STORAGE_INITIALIZATION_RUNNER_EXACT.md"
REFRESH_MD="$ROOT/131.implementation-roadmap/131450_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_QUEUE_REFRESH_RUNNER_EXACT.md"
AUDIT_MD="$ROOT/131.implementation-roadmap/131451_STATIC_ART_OS_PERSONA_REFERENCE_CONSISTENCY_AUDIT_RUNNER_EXACT.md"
MODE_MD="$ROOT/131.implementation-roadmap/131452_STATIC_ART_OS_PERSONA_REFERENCE_DRY_RUN_AND_APPLY_MODE_RULE.md"
START_MD="$ROOT/131.implementation-roadmap/131453_STATIC_ART_OS_PERSONA_REFERENCE_OPERATOR_START_SEQUENCE_FOR_RUNNERS.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE REGISTRY / QUEUE RUNNER DESIGN REVIEW
============================================================

Usage:
  bash 132.operations/132860_staticart_persona_reference_registry_queue_runner_design_review.sh help
  bash 132.operations/132860_staticart_persona_reference_registry_queue_runner_design_review.sh list
  bash 132.operations/132860_staticart_persona_reference_registry_queue_runner_design_review.sh short
  bash 132.operations/132860_staticart_persona_reference_registry_queue_runner_design_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$POLICY_MD
$INIT_MD
$REFRESH_MD
$AUDIT_MD
$MODE_MD
$START_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'RUNNER POLICY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$POLICY_MD"

  printf '\n============================================================\n'
  printf 'STORAGE INITIALIZATION RUNNER EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$INIT_MD"

  printf '\n============================================================\n'
  printf 'REGISTRY / QUEUE REFRESH RUNNER EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REFRESH_MD"

  printf '\n============================================================\n'
  printf 'CONSISTENCY AUDIT RUNNER EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$AUDIT_MD"

  printf '\n============================================================\n'
  printf 'DRY RUN / APPLY MODE RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MODE_MD"

  printf '\n============================================================\n'
  printf 'OPERATOR START SEQUENCE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$START_MD"
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
