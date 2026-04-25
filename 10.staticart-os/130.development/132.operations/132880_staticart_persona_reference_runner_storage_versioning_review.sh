#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

TOPOLOGY_MD="$ROOT/131.implementation-roadmap/131460_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_FILE_PLACEMENT_AND_STORAGE_TOPOLOGY_EXACT.md"
VERSION_MD="$ROOT/131.implementation-roadmap/131461_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_NAMING_VERSIONING_AND_LINEAGE_RULE.md"
RETENTION_MD="$ROOT/131.implementation-roadmap/131462_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_REPORT_ARCHIVE_AND_RETENTION_RULE.md"
HANDOFF_MD="$ROOT/131.implementation-roadmap/131463_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_HANDOFF_AND_OPERATOR_OWNERSHIP_EXACT.md"
PATCH_MD="$ROOT/131.implementation-roadmap/131464_STATIC_ART_OS_PERSONA_REFERENCE_RUNNER_STORAGE_CHANGE_CONTROL_AND_PATCH_RULE.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE RUNNER STORAGE / VERSIONING REVIEW
============================================================

Usage:
  bash 132.operations/132880_staticart_persona_reference_runner_storage_versioning_review.sh help
  bash 132.operations/132880_staticart_persona_reference_runner_storage_versioning_review.sh list
  bash 132.operations/132880_staticart_persona_reference_runner_storage_versioning_review.sh short
  bash 132.operations/132880_staticart_persona_reference_runner_storage_versioning_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$TOPOLOGY_MD
$VERSION_MD
$RETENTION_MD
$HANDOFF_MD
$PATCH_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'RUNNER FILE PLACEMENT / STORAGE TOPOLOGY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$TOPOLOGY_MD"

  printf '\n============================================================\n'
  printf 'RUNNER NAMING / VERSIONING / LINEAGE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$VERSION_MD"

  printf '\n============================================================\n'
  printf 'RUNNER REPORT / ARCHIVE / RETENTION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RETENTION_MD"

  printf '\n============================================================\n'
  printf 'RUNNER HANDOFF / OPERATOR OWNERSHIP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$HANDOFF_MD"

  printf '\n============================================================\n'
  printf 'RUNNER STORAGE CHANGE CONTROL / PATCH RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$PATCH_MD"
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
