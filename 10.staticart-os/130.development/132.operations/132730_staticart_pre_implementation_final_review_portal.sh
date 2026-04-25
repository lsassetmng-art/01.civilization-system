#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

CHECKLIST_MD="$ROOT/131.implementation-roadmap/131394_STATIC_ART_OS_PRE_IMPLEMENTATION_FINAL_REVIEW_MASTER_CHECKLIST.md"
GONOGO_MD="$ROOT/131.implementation-roadmap/131395_STATIC_ART_OS_PRE_IMPLEMENTATION_GO_NO_GO_CRITERIA_EXACT.md"
SCAN_MD="$ROOT/920.meta/101.pre_implementation_final_review_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_CONTRADICTION_SCAN_GUIDE.md"
SIGNOFF_MD="$ROOT/920.meta/101.pre_implementation_final_review_pack/000002_STATIC_ART_OS_PRE_IMPLEMENTATION_FINAL_REVIEW_SIGNOFF_NOTE.md"

FREEZE_VERIFY="$ROOT/132.operations/132670_staticart_master_design_freeze_verify_only.sh"
SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PRE IMPLEMENTATION FINAL REVIEW PORTAL
============================================================

Usage:
  bash 132.operations/132730_staticart_pre_implementation_final_review_portal.sh help
  bash 132.operations/132730_staticart_pre_implementation_final_review_portal.sh list
  bash 132.operations/132730_staticart_pre_implementation_final_review_portal.sh short
  bash 132.operations/132730_staticart_pre_implementation_final_review_portal.sh commands
TEXT
}

show_list() {
  cat <<TEXT
$CHECKLIST_MD
$GONOGO_MD
$SCAN_MD
$SIGNOFF_MD
$FREEZE_VERIFY
$SWEEP
$GATE
$PERSONA
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'MASTER CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CHECKLIST_MD"

  printf '\n============================================================\n'
  printf 'GO / NO-GO CRITERIA\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GONOGO_MD"

  printf '\n============================================================\n'
  printf 'CONTRADICTION SCAN GUIDE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SCAN_MD"

  printf '\n============================================================\n'
  printf 'FINAL REVIEW SIGNOFF NOTE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$SIGNOFF_MD"
}

show_commands() {
  cat <<TEXT
bash "$FREEZE_VERIFY"
bash "$SWEEP"
bash "$GATE" quick
bash "$PERSONA" quick
TEXT
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
  commands)
    show_commands
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
