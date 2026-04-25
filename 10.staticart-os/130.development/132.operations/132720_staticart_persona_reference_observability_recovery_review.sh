#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"

RECON_MD="$ROOT/070.operations/070160_STATIC_ART_OS_PERSONA_REFERENCE_RECONCILIATION_AND_DRIFT_DETECTION_EXACT.md"
OBS_MD="$ROOT/070.operations/070170_STATIC_ART_OS_PERSONA_REFERENCE_MONITORING_ALERTING_AND_OBSERVABILITY_EXACT.md"
INCIDENT_MD="$ROOT/070.operations/070180_STATIC_ART_OS_PERSONA_REFERENCE_INCIDENT_ROLLBACK_AND_RECOVERY_EXACT.md"
CUTOVER_MD="$ROOT/131.implementation-roadmap/131393_STATIC_ART_OS_PERSONA_REFERENCE_MIGRATION_CUTOVER_AND_BACKFILL_EXACT.md"
SLO_MD="$ROOT/070.operations/070190_STATIC_ART_OS_PERSONA_REFERENCE_RUNTIME_KPI_AND_SLO_EXACT.md"

MODE="${1:-help}"

show_help() {
  cat <<'TEXT'
============================================================
STATICART PERSONA REFERENCE OBSERVABILITY / RECOVERY REVIEW
============================================================

Usage:
  bash 132.operations/132720_staticart_persona_reference_observability_recovery_review.sh help
  bash 132.operations/132720_staticart_persona_reference_observability_recovery_review.sh list
  bash 132.operations/132720_staticart_persona_reference_observability_recovery_review.sh short
  bash 132.operations/132720_staticart_persona_reference_observability_recovery_review.sh paths
TEXT
}

show_list() {
  cat <<TEXT
$RECON_MD
$OBS_MD
$INCIDENT_MD
$CUTOVER_MD
$SLO_MD
TEXT
}

show_short() {
  printf '\n============================================================\n'
  printf 'RECONCILIATION / DRIFT DETECTION\n'
  printf '============================================================\n'
  sed -n '1,220p' "$RECON_MD"

  printf '\n============================================================\n'
  printf 'MONITORING / ALERTING / OBSERVABILITY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$OBS_MD"

  printf '\n============================================================\n'
  printf 'INCIDENT / ROLLBACK / RECOVERY\n'
  printf '============================================================\n'
  sed -n '1,220p' "$INCIDENT_MD"

  printf '\n============================================================\n'
  printf 'MIGRATION / CUTOVER / BACKFILL\n'
  printf '============================================================\n'
  sed -n '1,220p' "$CUTOVER_MD"

  printf '\n============================================================\n'
  printf 'RUNTIME KPI / SLO\n'
  printf '============================================================\n'
  sed -n '1,180p' "$SLO_MD"
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
