#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

HANDOFF_MD="$ROOT/920.meta/098.implementation_start_transition_pack/000001_STATIC_ART_OS_IMPLEMENTATION_START_MASTER_HANDOFF_AFTER_FREEZE.md"
ORDER_MD="$ROOT/920.meta/098.implementation_start_transition_pack/000002_STATIC_ART_OS_IMPLEMENTATION_START_COMMAND_ORDER_FIXED.md"
GUIDE_MD="$ROOT/920.meta/098.implementation_start_transition_pack/000003_STATIC_ART_OS_BLOCKER_RISK_EVIDENCE_UPDATE_GUIDE.md"

FREEZE_VERIFY="$ROOT/132.operations/132670_staticart_master_design_freeze_verify_only.sh"
SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"
START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
PHASE1="$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh"
RUN_PREP="$ROOT/132.operations/132540_staticart_prepare_execution_run.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART IMPLEMENTATION START TRANSITION PORTAL
============================================================

Usage:
  bash 132.operations/132690_staticart_implementation_start_transition_portal.sh help
  bash 132.operations/132690_staticart_implementation_start_transition_portal.sh list
  bash 132.operations/132690_staticart_implementation_start_transition_portal.sh short
  bash 132.operations/132690_staticart_implementation_start_transition_portal.sh commands
TEXT
}

show_list() {
  cat <<TEXT
$HANDOFF_MD
$ORDER_MD
$GUIDE_MD
$FREEZE_VERIFY
$SWEEP
$GATE
$PERSONA
$START_HERE
$MASTER
$PHASE1
$RUN_PREP
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'IMPLEMENTATION START MASTER HANDOFF\n'
  printf '============================================================\n'
  sed -n '1,220p' "$HANDOFF_MD"

  printf '\n============================================================\n'
  printf 'COMMAND ORDER FIXED\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ORDER_MD"

  printf '\n============================================================\n'
  printf 'BLOCKER / RISK / EVIDENCE UPDATE GUIDE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$GUIDE_MD"
}

show_commands() {
  cat <<TEXT
bash "$FREEZE_VERIFY"
bash "$SWEEP"
bash "$GATE" quick
bash "$PERSONA" quick
bash "$START_HERE" env
bash "$MASTER" help
bash "$PHASE1" precheck
bash "$PHASE1" apply
bash "$PHASE1" verify
bash "$MASTER" phase2-check
bash "$MASTER" phase3-check
bash "$MASTER" phase4-5-check
bash "$MASTER" phase6-7-check
bash "$MASTER" final-check
bash "$RUN_PREP" prepare
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
