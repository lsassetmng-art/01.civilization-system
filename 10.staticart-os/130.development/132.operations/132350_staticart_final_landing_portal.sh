#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
PERSONA_REVIEW="$ROOT/000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md"

HANDOFF="$ROOT/132.operations/132120_STATIC_ART_OS_IMPLEMENTATION_START_HANDOFF.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"

START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_PORTAL="$ROOT/132.operations/132320_staticart_persona_rule_final_portal.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART FINAL LANDING PORTAL
============================================================

Usage:
  bash 132.operations/132350_staticart_final_landing_portal.sh help
  bash 132.operations/132350_staticart_final_landing_portal.sh list
  bash 132.operations/132350_staticart_final_landing_portal.sh short
  bash 132.operations/132350_staticart_final_landing_portal.sh commands
  bash 132.operations/132350_staticart_final_landing_portal.sh checks
TEXT
}

show_list() {
  cat <<TEXT
$LANDING
$PORTAL
$DASHBOARD
$PERSONA_REVIEW
$HANDOFF
$CHECKLIST
$MEMO
$START_HERE
$MASTER
$HEALTH
$GATE
$PERSONA_PORTAL
$PERSONA_RECHECK
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'FINAL LANDING PORTAL\n'
  printf '============================================================\n'
  sed -n '1,220p' "$LANDING"

  printf '\n============================================================\n'
  printf 'FINAL LANDING CHECKLIST\n'
  printf '============================================================\n'
  sed -n '1,180p' "$ROOT/132.operations/132340_STATIC_ART_OS_FINAL_LANDING_CHECKLIST.md"
}

show_commands() {
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
bash "$GATE" quick
bash "$PERSONA_RECHECK" quick
TEXT
}

run_checks() {
  bash "$HEALTH" quick
  bash "$GATE" quick
  bash "$PERSONA_RECHECK" quick
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
  checks)
    run_checks
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
