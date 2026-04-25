#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY_MD="$ROOT/131.implementation-roadmap/131403_STATIC_ART_OS_PERSONA_REFERENCE_WORK_PACKAGE_ACTUALIZATION_POLICY.md"
CATALOG_MD="$ROOT/131.implementation-roadmap/131404_STATIC_ART_OS_PERSONA_REFERENCE_ACTUAL_WORK_PACKAGE_CATALOG.md"
GATE_MD="$ROOT/131.implementation-roadmap/131405_STATIC_ART_OS_PERSONA_REFERENCE_WORK_PACKAGE_DEPENDENCY_AND_GATE_MAP_EXACT.md"
DELIVERABLE_MD="$ROOT/131.implementation-roadmap/131406_STATIC_ART_OS_PERSONA_REFERENCE_DELIVERABLE_SKELETON_AND_EVIDENCE_RULE_EXACT.md"
APPROVAL_MD="$ROOT/131.implementation-roadmap/131407_STATIC_ART_OS_PERSONA_REFERENCE_REVIEW_AND_APPROVAL_PACKET_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE ACTUAL WORK PACKAGE REVIEW
============================================================

Usage:
  bash 132.operations/132780_staticart_persona_reference_actual_workpackage_review.sh help
  bash 132.operations/132780_staticart_persona_reference_actual_workpackage_review.sh list
  bash 132.operations/132780_staticart_persona_reference_actual_workpackage_review.sh short
  bash 132.operations/132780_staticart_persona_reference_actual_workpackage_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$POLICY_MD
$CATALOG_MD
$GATE_MD
$DELIVERABLE_MD
$APPROVAL_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'WORK PACKAGE ACTUALIZATION POLICY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$POLICY_MD"

  printf '\n============================================================\n'
  printf 'ACTUAL WORK PACKAGE CATALOG\n'
  printf '============================================================\n'
  sed -n '1,240p' "$CATALOG_MD"

  printf '\n============================================================\n'
  printf 'DEPENDENCY AND GATE MAP\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GATE_MD"

  printf '\n============================================================\n'
  printf 'DELIVERABLE SKELETON AND EVIDENCE RULE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$DELIVERABLE_MD"

  printf '\n============================================================\n'
  printf 'REVIEW AND APPROVAL PACKET\n'
  printf '============================================================\n'
  sed -n '1,220p' "$APPROVAL_MD"
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
