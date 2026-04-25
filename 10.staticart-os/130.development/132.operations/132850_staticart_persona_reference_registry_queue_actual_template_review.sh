#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

MASTER_INDEX_MD="$ROOT/131.implementation-roadmap/131441_STATIC_ART_OS_PERSONA_REFERENCE_MASTER_INDEX_ACTUAL_FILE_TEMPLATE.md"
LEDGER_MD="$ROOT/131.implementation-roadmap/131442_STATIC_ART_OS_PERSONA_REFERENCE_REGISTRY_LEDGER_ACTUAL_FILE_TEMPLATE.md"
REVIEW_QUEUE_MD="$ROOT/131.implementation-roadmap/131443_STATIC_ART_OS_PERSONA_REFERENCE_REVIEW_QUEUE_ACTUAL_FILE_TEMPLATE.md"
EXEC_QUEUE_MD="$ROOT/131.implementation-roadmap/131444_STATIC_ART_OS_PERSONA_REFERENCE_EXECUTION_QUEUE_ACTUAL_FILE_TEMPLATE.md"
BLOCKED_QUEUE_MD="$ROOT/131.implementation-roadmap/131445_STATIC_ART_OS_PERSONA_REFERENCE_BLOCKED_QUEUE_ACTUAL_FILE_TEMPLATE.md"
ARCHIVE_QUEUE_MD="$ROOT/131.implementation-roadmap/131446_STATIC_ART_OS_PERSONA_REFERENCE_ARCHIVE_REFERENCE_QUEUE_ACTUAL_FILE_TEMPLATE.md"
REFRESH_REPORT_MD="$ROOT/131.implementation-roadmap/131447_STATIC_ART_OS_PERSONA_REFERENCE_QUEUE_REFRESH_REPORT_ACTUAL_FILE_TEMPLATE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE REGISTRY / QUEUE ACTUAL TEMPLATE REVIEW
============================================================

Usage:
  bash 132.operations/132850_staticart_persona_reference_registry_queue_actual_template_review.sh help
  bash 132.operations/132850_staticart_persona_reference_registry_queue_actual_template_review.sh list
  bash 132.operations/132850_staticart_persona_reference_registry_queue_actual_template_review.sh short
  bash 132.operations/132850_staticart_persona_reference_registry_queue_actual_template_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$MASTER_INDEX_MD
$LEDGER_MD
$REVIEW_QUEUE_MD
$EXEC_QUEUE_MD
$BLOCKED_QUEUE_MD
$ARCHIVE_QUEUE_MD
$REFRESH_REPORT_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER INDEX ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$MASTER_INDEX_MD"

  printf '\n============================================================\n'
  printf 'LEDGER ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LEDGER_MD"

  printf '\n============================================================\n'
  printf 'REVIEW QUEUE ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REVIEW_QUEUE_MD"

  printf '\n============================================================\n'
  printf 'EXECUTION QUEUE ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$EXEC_QUEUE_MD"

  printf '\n============================================================\n'
  printf 'BLOCKED QUEUE ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$BLOCKED_QUEUE_MD"

  printf '\n============================================================\n'
  printf 'ARCHIVE REFERENCE QUEUE ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ARCHIVE_QUEUE_MD"

  printf '\n============================================================\n'
  printf 'REFRESH REPORT ACTUAL TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REFRESH_REPORT_MD"
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
