#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY_MD="$ROOT/131.implementation-roadmap/131436_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_QUEUE_GENERATION_POLICY.md"
INDEX_TMPL_MD="$ROOT/131.implementation-roadmap/131437_STATIC_ART_OS_PERSONA_REFERENCE_MASTER_INDEX_FILE_TEMPLATE_EXACT.md"
LEDGER_TMPL_MD="$ROOT/131.implementation-roadmap/131438_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_LEDGER_FILE_TEMPLATE_EXACT.md"
SYNC_MD="$ROOT/131.implementation-roadmap/131439_STATIC_ART_OS_PERSONA_REFERENCE_QUEUE_REFRESH_AND_SYNC_WORKFLOW_EXACT.md"
CHECKLIST_MD="$ROOT/131.implementation-roadmap/131440_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_QUEUE_MAINTENANCE_CHECKLIST.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE REGISTRY QUEUE GENERATION REVIEW
============================================================

Usage:
  bash 132.operations/132840_staticart_persona_reference_registry_queue_generation_review.sh help
  bash 132.operations/132840_staticart_persona_reference_registry_queue_generation_review.sh list
  bash 132.operations/132840_staticart_persona_reference_registry_queue_generation_review.sh short
  bash 132.operations/132840_staticart_persona_reference_registry_queue_generation_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$POLICY_MD
$INDEX_TMPL_MD
$LEDGER_TMPL_MD
$SYNC_MD
$CHECKLIST_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'GENERATION POLICY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$POLICY_MD"

  printf '\n============================================================\n'
  printf 'MASTER INDEX FILE TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$INDEX_TMPL_MD"

  printf '\n============================================================\n'
  printf 'REGISTRY LEDGER FILE TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LEDGER_TMPL_MD"

  printf '\n============================================================\n'
  printf 'QUEUE REFRESH / SYNC WORKFLOW\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SYNC_MD"

  printf '\n============================================================\n'
  printf 'MAINTENANCE CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,200p' "$CHECKLIST_MD"
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
