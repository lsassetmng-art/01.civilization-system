#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

VERSION_MD="$ROOT/080.policy/080310_STATIC_ART_OS_PERSONA_REFERENCE_VERSIONING_AND_COMPATIBILITY_EXACT.md"
DEPRECATION_MD="$ROOT/080.policy/080320_STATIC_ART_OS_PERSONA_REFERENCE_DEPRECATION_AND_RETIREMENT_EXACT.md"
CHANGE_MD="$ROOT/070.operations/070200_STATIC_ART_OS_PERSONA_REFERENCE_CHANGE_CLASSIFICATION_AND_REVIEW_LANES_EXACT.md"
CADENCE_MD="$ROOT/070.operations/070210_STATIC_ART_OS_PERSONA_REFERENCE_STEADY_STATE_CHECK_CADENCE_EXACT.md"
RETENTION_MD="$ROOT/100.security/100130_STATIC_ART_OS_PERSONA_REFERENCE_LONG_TERM_AUDIT_EVIDENCE_RETENTION_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE LIFECYCLE GOVERNANCE REVIEW
============================================================

Usage:
  bash 132.operations/132760_staticart_persona_reference_lifecycle_governance_review.sh help
  bash 132.operations/132760_staticart_persona_reference_lifecycle_governance_review.sh list
  bash 132.operations/132760_staticart_persona_reference_lifecycle_governance_review.sh short
  bash 132.operations/132760_staticart_persona_reference_lifecycle_governance_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$VERSION_MD
$DEPRECATION_MD
$CHANGE_MD
$CADENCE_MD
$RETENTION_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'VERSIONING / COMPATIBILITY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$VERSION_MD"

  printf '\n============================================================\n'
  printf 'DEPRECATION / RETIREMENT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DEPRECATION_MD"

  printf '\n============================================================\n'
  printf 'CHANGE CLASSIFICATION / REVIEW LANES\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CHANGE_MD"

  printf '\n============================================================\n'
  printf 'STEADY STATE CHECK CADENCE\n'
  printf '============================================================\n'
  sed -n '1,180p' "$CADENCE_MD"

  printf '\n============================================================\n'
  printf 'LONG TERM AUDIT / EVIDENCE RETENTION\n'
  printf '============================================================\n'
  sed -n '1,180p' "$RETENTION_MD"
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
