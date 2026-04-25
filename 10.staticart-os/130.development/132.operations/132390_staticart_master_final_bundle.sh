#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
PERSONA_REVIEW="$ROOT/000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md"
CHECKLIST="$ROOT/131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md"
MEMO="$ROOT/131.implementation-roadmap/131360_STATIC_ART_OS_STANDALONE_IMPLEMENTATION_READY_COMPLETION_MEMO_TEMPLATE.md"
PERSONA_RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
COMPLETION="$ROOT/920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md"

START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"
HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART MASTER FINAL BUNDLE
============================================================

Usage:
  bash 132.operations/132390_staticart_master_final_bundle.sh help
  bash 132.operations/132390_staticart_master_final_bundle.sh list
  bash 132.operations/132390_staticart_master_final_bundle.sh short
  bash 132.operations/132390_staticart_master_final_bundle.sh commands
  bash 132.operations/132390_staticart_master_final_bundle.sh checks
TEXT
}

show_list() {
  cat <<TEXT
$LANDING
$PORTAL
$DASHBOARD
$PERSONA_REVIEW
$CHECKLIST
$MEMO
$PERSONA_RULE
$COMPLETION
$START_HERE
$MASTER
$GATE
$PERSONA_RECHECK
$HEALTH
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'FINAL LANDING PORTAL\n'
  printf '============================================================\n'
  sed -n '1,180p' "$LANDING"

  printf '\n============================================================\n'
  printf 'STATUS DASHBOARD\n'
  printf '============================================================\n'
  sed -n '1,160p' "$DASHBOARD"

  printf '\n============================================================\n'
  printf 'PERSONA RULE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$PERSONA_RULE"

  printf '\n============================================================\n'
  printf 'DESIGN ORGANIZATION COMPLETION MEMO\n'
  printf '============================================================\n'
  sed -n '1,160p' "$COMPLETION"
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
