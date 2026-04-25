#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

QUEUE="$ROOT/920.meta/083.execution_queue_pack/000001_STATIC_ART_OS_EXECUTION_PRIORITY_QUEUE.md"
FIRSTRUN="$ROOT/920.meta/083.execution_queue_pack/000002_STATIC_ART_OS_FIRST_RUN_TASK_PACK.md"

SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
START="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"
PHASE1="$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART EXECUTION QUEUE PORTAL
============================================================

Usage:
  bash 132.operations/132520_staticart_execution_queue_portal.sh help
  bash 132.operations/132520_staticart_execution_queue_portal.sh list
  bash 132.operations/132520_staticart_execution_queue_portal.sh short
  bash 132.operations/132520_staticart_execution_queue_portal.sh first
TEXT
}

show_list() {
  cat <<TEXT
$QUEUE
$FIRSTRUN
$SWEEP
$START
$MASTER
$GATE
$PERSONA
$PHASE1
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'EXECUTION PRIORITY QUEUE\n'
  printf '============================================================\n'
  sed -n '1,220p' "$QUEUE"

  printf '\n============================================================\n'
  printf 'FIRST RUN TASK PACK\n'
  printf '============================================================\n'
  sed -n '1,220p' "$FIRSTRUN"
}

show_first() {
  cat <<TEXT
bash "$SWEEP"
bash "$START" env
bash "$GATE" quick
bash "$PERSONA" quick
bash "$PHASE1" precheck
bash "$PHASE1" apply
bash "$PHASE1" verify
bash "$MASTER" phase2-check
bash "$MASTER" phase3-check
bash "$MASTER" phase4-5-check
bash "$MASTER" phase6-7-check
bash "$MASTER" final-check
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
  first)
    show_first
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
