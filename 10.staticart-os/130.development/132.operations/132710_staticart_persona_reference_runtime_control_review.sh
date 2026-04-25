#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

REFLECT_MD="$ROOT/060.integration/060180_STATIC_ART_OS_PERSONA_REFERENCE_REFLECTION_REPLAY_AND_STALE_HANDLING_EXACT.md"
RETENTION_MD="$ROOT/080.policy/080300_STATIC_ART_OS_PERSONA_REFERENCE_EXPIRY_RETENTION_AND_REFRESH_EXACT.md"
ACCESS_MD="$ROOT/100.security/100120_STATIC_ART_OS_PERSONA_REFERENCE_ACCESS_CONTROL_AND_AUDIT_EXACT.md"
RUNBOOK_MD="$ROOT/132.operations/132700_STATIC_ART_OS_PERSONA_REFERENCE_RUNTIME_OPERATIONS_RUNBOOK.md"
ROLLOUT_MD="$ROOT/131.implementation-roadmap/131392_STATIC_ART_OS_PERSONA_REFERENCE_ROLLOUT_AND_ENABLEMENT_SEQUENCE_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE RUNTIME CONTROL REVIEW
============================================================

Usage:
  bash 132.operations/132710_staticart_persona_reference_runtime_control_review.sh help
  bash 132.operations/132710_staticart_persona_reference_runtime_control_review.sh list
  bash 132.operations/132710_staticart_persona_reference_runtime_control_review.sh short
  bash 132.operations/132710_staticart_persona_reference_runtime_control_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$REFLECT_MD
$RETENTION_MD
$ACCESS_MD
$RUNBOOK_MD
$ROLLOUT_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'REFLECTION / REPLAY / STALE HANDLING\n'
  printf '============================================================\n'
  sed -n '1,220p' "$REFLECT_MD"

  printf '\n============================================================\n'
  printf 'EXPIRY / RETENTION / REFRESH\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RETENTION_MD"

  printf '\n============================================================\n'
  printf 'ACCESS CONTROL / AUDIT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ACCESS_MD"

  printf '\n============================================================\n'
  printf 'RUNTIME OPERATIONS RUNBOOK\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RUNBOOK_MD"

  printf '\n============================================================\n'
  printf 'ROLLOUT / ENABLEMENT SEQUENCE EXACT\n'
  printf '============================================================\n'
  sed -n '1,220p' "$ROLLOUT_MD"
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
