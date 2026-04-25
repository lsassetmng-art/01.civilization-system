#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
OUT_BASE="$ROOT/920.meta/073.master_readonly_sweep"
STAMP="$(date +%Y%m%d_%H%M%S)"
RUN_DIR="$OUT_BASE/$STAMP"
TMP_DIR="$HOME/.tmp/staticart_master_readonly_sweep_$STAMP"

DASH_REFRESH="$ROOT/132.operations/132180_staticart_refresh_dashboard.sh"
HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"
CERTIFY="$ROOT/132.operations/132400_staticart_master_final_certify.sh"

SUMMARY_MD="$RUN_DIR/000001_STATIC_ART_OS_MASTER_READONLY_SWEEP_SUMMARY.md"
HEALTH_LOG="$RUN_DIR/000010_healthcheck_quick.log"
GATE_LOG="$RUN_DIR/000020_pre_implementation_gate_quick.log"
PERSONA_LOG="$RUN_DIR/000030_persona_final_recheck_quick.log"
CERT_LOG="$RUN_DIR/000040_master_final_certification_report.log"

mkdir -p "$OUT_BASE" "$RUN_DIR" "$TMP_DIR"

run_and_capture() {
  local label="$1"
  local outfile="$2"
  shift 2

  set +e
  "$@" >"$outfile" 2>&1
  rc=$?
  set -e

  printf '%s' "$rc"
}

DASH_REFRESH_STATUS="NG"
if [ -f "$DASH_REFRESH" ]; then
  set +e
  bash "$DASH_REFRESH" >/dev/null 2>&1
  drc=$?
  set -e
  if [ "$drc" -eq 0 ]; then
    DASH_REFRESH_STATUS="OK"
  fi
fi

HEALTH_RC="999"
GATE_RC="999"
PERSONA_RC="999"
CERT_RC="999"

if [ -f "$HEALTH" ]; then
  HEALTH_RC="$(run_and_capture health "$HEALTH_LOG" bash "$HEALTH" quick)"
else
  printf '%s\n' 'missing launcher' > "$HEALTH_LOG"
fi

if [ -f "$GATE" ]; then
  GATE_RC="$(run_and_capture gate "$GATE_LOG" bash "$GATE" quick)"
else
  printf '%s\n' 'missing launcher' > "$GATE_LOG"
fi

if [ -f "$PERSONA_RECHECK" ]; then
  PERSONA_RC="$(run_and_capture persona "$PERSONA_LOG" bash "$PERSONA_RECHECK" quick)"
else
  printf '%s\n' 'missing launcher' > "$PERSONA_LOG"
fi

if [ -f "$CERTIFY" ]; then
  CERT_RC="$(run_and_capture certify "$CERT_LOG" bash "$CERTIFY" report)"
else
  printf '%s\n' 'missing launcher' > "$CERT_LOG"
fi

ENV_STATUS="NG"
if [ -n "${PERSONA_DATABASE_URL:-}" ]; then
  ENV_STATUS="OK"
fi

cat > "$SUMMARY_MD" <<EOF2
# ============================================================
# STATIC ART OS MASTER READONLY SWEEP SUMMARY
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_dir:
- $RUN_DIR

environment:
- PERSONA_DATABASE_URL_exported_now: $ENV_STATUS

launcher_status:
- dashboard_refresh_attempted: $DASH_REFRESH_STATUS
- health_quick_rc: $HEALTH_RC
- gate_quick_rc: $GATE_RC
- persona_final_recheck_quick_rc: $PERSONA_RC
- master_final_certification_report_rc: $CERT_RC

artifacts:
- summary_md: $SUMMARY_MD
- health_log: $HEALTH_LOG
- gate_log: $GATE_LOG
- persona_log: $PERSONA_LOG
- certification_log: $CERT_LOG

judgement_rule:
- rc 0 is the expected success state for read-only launchers.
- non-zero rc means review is needed before relying on that layer.
- this sweep does not perform DB writes.
EOF2

rm -rf "$TMP_DIR"

printf '\n============================================================\n'
printf 'STATICART MASTER READONLY SWEEP DONE\n'
printf '============================================================\n'
printf 'RUN_DIR : %s\n' "$RUN_DIR"
printf 'SUMMARY : %s\n' "$SUMMARY_MD"
printf 'HEALTH  : %s\n' "$HEALTH_LOG"
printf 'GATE    : %s\n' "$GATE_LOG"
printf 'PERSONA : %s\n' "$PERSONA_LOG"
printf 'CERT    : %s\n' "$CERT_LOG"

printf '\n[SUMMARY HEAD]\n'
sed -n '1,160p' "$SUMMARY_MD"
