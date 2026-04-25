#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

TOPOLOGY_MD="$ROOT/131.implementation-roadmap/131426_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_BLOCK_STORAGE_TOPOLOGY_EXACT.md"
LAYOUT_MD="$ROOT/131.implementation-roadmap/131427_STATIC_ART_OS_PERSONA_REFERENCE_DIRECTORY_LAYOUT_AND_FILE_PLACEMENT_RULE.md"
LEDGER_MD="$ROOT/131.implementation-roadmap/131428_STATIC_ART_OS_PERSONA_REFERENCE_BLOCK_INDEX_LEDGER_AND_STATUS_TRACKING_RULE.md"
SEPARATION_MD="$ROOT/131.implementation-roadmap/131429_STATIC_ART_OS_PERSONA_REFERENCE_AUTHORING_REVIEW_EXECUTION_ARCHIVE_SEPARATION_EXACT.md"
MAPPING_MD="$ROOT/131.implementation-roadmap/131430_STATIC_ART_OS_PERSONA_REFERENCE_STORAGE_HANDOFF_MAPPING.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE BLOCK STORAGE REVIEW
============================================================

Usage:
  bash 132.operations/132820_staticart_persona_reference_block_storage_review.sh help
  bash 132.operations/132820_staticart_persona_reference_block_storage_review.sh list
  bash 132.operations/132820_staticart_persona_reference_block_storage_review.sh short
  bash 132.operations/132820_staticart_persona_reference_block_storage_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$TOPOLOGY_MD
$LAYOUT_MD
$LEDGER_MD
$SEPARATION_MD
$MAPPING_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'STORAGE TOPOLOGY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TOPOLOGY_MD"

  printf '\n============================================================\n'
  printf 'DIRECTORY LAYOUT / FILE PLACEMENT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LAYOUT_MD"

  printf '\n============================================================\n'
  printf 'INDEX / LEDGER / STATUS TRACKING\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LEDGER_MD"

  printf '\n============================================================\n'
  printf 'AUTHORING / REVIEW / EXECUTION / ARCHIVE SEPARATION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SEPARATION_MD"

  printf '\n============================================================\n'
  printf 'STORAGE HANDOFF MAPPING\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MAPPING_MD"
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
