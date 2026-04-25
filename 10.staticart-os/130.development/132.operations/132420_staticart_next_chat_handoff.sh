#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

HANDOFF="$ROOT/920.meta/074.next_chat_handoff/000001_STATIC_ART_OS_NEXT_CHAT_HANDOFF_MEMO.md"
NEXTACTION="$ROOT/920.meta/074.next_chat_handoff/000002_STATIC_ART_OS_NEXT_ACTION_PACK.md"
LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
PERSONA_REVIEW="$ROOT/000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md"

SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART NEXT CHAT HANDOFF
============================================================

Usage:
  bash 132.operations/132420_staticart_next_chat_handoff.sh help
  bash 132.operations/132420_staticart_next_chat_handoff.sh list
  bash 132.operations/132420_staticart_next_chat_handoff.sh short
  bash 132.operations/132420_staticart_next_chat_handoff.sh review
  bash 132.operations/132420_staticart_next_chat_handoff.sh execution
TEXT
}

show_list() {
  cat <<TEXT
$HANDOFF
$NEXTACTION
$LANDING
$DASHBOARD
$PERSONA_REVIEW
$SWEEP
$START_HERE
$MASTER
$PERSONA_RECHECK
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'NEXT CHAT HANDOFF MEMO\n'
  printf '============================================================\n'
  sed -n '1,180p' "$HANDOFF"

  printf '\n============================================================\n'
  printf 'NEXT ACTION PACK\n'
  printf '============================================================\n'
  sed -n '1,220p' "$NEXTACTION"
}

run_review() {
  bash "$SWEEP"
}

show_execution() {
  cat <<TEXT
bash "$START_HERE" env
bash "$MASTER" help
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" precheck
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" apply
bash "$ROOT/121.db-implementation-prep/121180_STATIC_ART_OS_PHASE1_APPLY_VERIFY_WORKFLOW.sh" verify
bash "$MASTER" phase2-check
bash "$MASTER" phase3-check
bash "$MASTER" phase4-5-check
bash "$MASTER" phase6-7-check
bash "$MASTER" final-check
bash "$PERSONA_RECHECK" quick
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
  review)
    run_review
    ;;
  execution)
    show_execution
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
