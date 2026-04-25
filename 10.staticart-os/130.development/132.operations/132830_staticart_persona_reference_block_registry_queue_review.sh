#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

INDEX_MD="$ROOT/131.implementation-roadmap/131431_STATIC_ART_OS_PERSONA_REFERENCE_BLOCK_MASTER_INDEX_EXACT.md"
REGISTRY_MD="$ROOT/131.implementation-roadmap/131432_STATIC_ART_OS_PERSONA_REFERENCE_BLOCK_REGISTRY_SCHEMA_AND_FIELD_RULE.md"
QUEUE_MD="$ROOT/131.implementation-roadmap/131433_STATIC_ART_OS_PERSONA_REFERENCE_REVIEW_QUEUE_AND_EXECUTION_QUEUE_EXACT.md"
TRANSITION_MD="$ROOT/131.implementation-roadmap/131434_STATIC_ART_OS_PERSONA_REFERENCE_QUEUE_TRANSITION_AND_STATUS_MOVEMENT_RULE.md"
GUIDE_MD="$ROOT/131.implementation-roadmap/131435_STATIC_ART_OS_PERSONA_REFERENCE_QUEUE_OPERATOR_GUIDE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE BLOCK REGISTRY / QUEUE REVIEW
============================================================

Usage:
  bash 132.operations/132830_staticart_persona_reference_block_registry_queue_review.sh help
  bash 132.operations/132830_staticart_persona_reference_block_registry_queue_review.sh list
  bash 132.operations/132830_staticart_persona_reference_block_registry_queue_review.sh short
  bash 132.operations/132830_staticart_persona_reference_block_registry_queue_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$INDEX_MD
$REGISTRY_MD
$QUEUE_MD
$TRANSITION_MD
$GUIDE_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'BLOCK MASTER INDEX\n'
  printf '============================================================\n'
  sed -n '1,220p' "$INDEX_MD"

  printf '\n============================================================\n'
  printf 'BLOCK REGISTRY SCHEMA / FIELD RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REGISTRY_MD"

  printf '\n============================================================\n'
  printf 'REVIEW / EXECUTION QUEUE EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$QUEUE_MD"

  printf '\n============================================================\n'
  printf 'QUEUE TRANSITION / STATUS MOVEMENT RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TRANSITION_MD"

  printf '\n============================================================\n'
  printf 'QUEUE OPERATOR GUIDE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GUIDE_MD"
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
