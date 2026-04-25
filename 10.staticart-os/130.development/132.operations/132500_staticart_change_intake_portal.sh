#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

POLICY="$ROOT/920.meta/081.change_intake_pack/000001_STATIC_ART_OS_CHANGE_INTAKE_POLICY.md"
WORKFLOW="$ROOT/920.meta/081.change_intake_pack/000002_STATIC_ART_OS_CONTROLLED_PATCH_WORKFLOW.md"
REQUEST="$ROOT/920.meta/081.change_intake_pack/000003_STATIC_ART_OS_CHANGE_REQUEST_TEMPLATE.md"
GUARD="$ROOT/920.meta/080.maintenance_guard_pack/000001_STATIC_ART_OS_MAINTENANCE_GUARD_POLICY.md"
DRIFT="$ROOT/132.operations/132490_staticart_drift_audit.sh"
SWEEP="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
PERSONA="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART CHANGE INTAKE PORTAL
============================================================

Usage:
  bash 132.operations/132500_staticart_change_intake_portal.sh help
  bash 132.operations/132500_staticart_change_intake_portal.sh list
  bash 132.operations/132500_staticart_change_intake_portal.sh short
  bash 132.operations/132500_staticart_change_intake_portal.sh checklist
TEXT
}

show_list() {
  cat <<TEXT
$POLICY
$WORKFLOW
$REQUEST
$GUARD
$DRIFT
$SWEEP
$PERSONA
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'CHANGE INTAKE POLICY\n'
  printf '============================================================\n'
  sed -n '1,180p' "$POLICY"

  printf '\n============================================================\n'
  printf 'CONTROLLED PATCH WORKFLOW\n'
  printf '============================================================\n'
  sed -n '1,200p' "$WORKFLOW"

  printf '\n============================================================\n'
  printf 'CHANGE REQUEST TEMPLATE\n'
  printf '============================================================\n'
  sed -n '1,160p' "$REQUEST"
}

show_checklist() {
  cat <<TEXT
Before change:
- Read $POLICY
- Read $WORKFLOW
- Fill $REQUEST
- Read $GUARD
- Run $DRIFT if structure may have changed

After change:
- Run $SWEEP for major navigation/review changes
- Run $PERSONA quick if Persona-linked display/reference changed
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
  checklist)
    show_checklist
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    show_help
    exit 1
    ;;
esac
