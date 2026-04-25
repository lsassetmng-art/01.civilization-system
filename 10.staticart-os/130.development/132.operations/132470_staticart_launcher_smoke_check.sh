#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
OUT_BASE="$ROOT/920.meta/078.launcher_registry_and_smokecheck"
STAMP="$(date +%Y%m%d_%H%M%S)"
RUN_DIR="$OUT_BASE/smoke_$STAMP"
SUMMARY="$RUN_DIR/000001_STATIC_ART_OS_LAUNCHER_SMOKE_CHECK_SUMMARY.md"

mkdir -p "$RUN_DIR"

run_cmd() {
  local label="$1"
  local outfile="$2"
  shift 2
  set +e
  "$@" >"$outfile" 2>&1
  rc=$?
  set -e
  printf '%s' "$rc"
}

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

REGISTRY_SH="$ROOT/132.operations/132460_staticart_launcher_registry.sh"
MASTER_SH="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
START_SH="$ROOT/132.operations/132140_staticart_start_here.sh"
REVIEW_SH="$ROOT/132.operations/132160_staticart_review_portal.sh"
CLOSEOUT_SH="$ROOT/132.operations/132170_staticart_closeout_portal.sh"
DASH_SH="$ROOT/132.operations/132180_staticart_refresh_dashboard.sh"
HEALTH_SH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
SIGNOFF_SH="$ROOT/132.operations/132210_staticart_signoff_portal.sh"
GATE_SH="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RULE_SH="$ROOT/132.operations/132250_staticart_persona_rule_review.sh"
PERSONA_ADD_SH="$ROOT/132.operations/132260_staticart_persona_reference_addendum_review.sh"
PERSONA_IMPACT_SH="$ROOT/132.operations/132270_staticart_persona_reference_impact_review.sh"
PERSONA_WORDING_SH="$ROOT/132.operations/132280_staticart_persona_reference_wording_review.sh"
PERSONA_RECHECK_SH="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"
PERSONA_FINAL_PORTAL_SH="$ROOT/132.operations/132320_staticart_persona_rule_final_portal.sh"
FINAL_LANDING_SH="$ROOT/132.operations/132350_staticart_final_landing_portal.sh"
UPPER_CANON_SH="$ROOT/132.operations/132360_staticart_upper_canon_review.sh"
COMPLETION_SH="$ROOT/132.operations/132370_staticart_design_completion_portal.sh"
MASTER_BUNDLE_SH="$ROOT/132.operations/132390_staticart_master_final_bundle.sh"
CERTIFY_SH="$ROOT/132.operations/132400_staticart_master_final_certify.sh"
SWEEP_SH="$ROOT/132.operations/132410_staticart_master_readonly_sweep.sh"
NEXTCHAT_SH="$ROOT/132.operations/132420_staticart_next_chat_handoff.sh"
RESUME_SH="$ROOT/132.operations/132430_staticart_export_resume_portal.sh"
TRACE_SH="$ROOT/132.operations/132440_staticart_traceability_lookup.sh"
QUESTION_SH="$ROOT/132.operations/132450_staticart_question_navigator.sh"

RC_REGISTRY="999"
RC_MASTER="999"
RC_START="999"
RC_REVIEW="999"
RC_CLOSEOUT="999"
RC_DASH="999"
RC_HEALTH="999"
RC_SIGNOFF="999"
RC_GATE="999"
RC_PERSONA_RULE="999"
RC_PERSONA_ADD="999"
RC_PERSONA_IMPACT="999"
RC_PERSONA_WORDING="999"
RC_PERSONA_RECHECK="999"
RC_PERSONA_FINAL_PORTAL="999"
RC_FINAL_LANDING="999"
RC_UPPER_CANON="999"
RC_COMPLETION="999"
RC_MASTER_BUNDLE="999"
RC_CERTIFY="999"
RC_SWEEP="999"
RC_NEXTCHAT="999"
RC_RESUME="999"
RC_TRACE="999"
RC_QUESTION="999"

[ -f "$REGISTRY_SH" ] && RC_REGISTRY="$(run_cmd registry "$RUN_DIR/001_registry.log" bash "$REGISTRY_SH" help)"
[ -f "$MASTER_SH" ] && RC_MASTER="$(run_cmd master "$RUN_DIR/002_master.log" bash "$MASTER_SH" help)"
[ -f "$START_SH" ] && RC_START="$(run_cmd start "$RUN_DIR/003_start.log" bash "$START_SH" help)"
[ -f "$REVIEW_SH" ] && RC_REVIEW="$(run_cmd review "$RUN_DIR/004_review.log" bash "$REVIEW_SH" help)"
[ -f "$CLOSEOUT_SH" ] && RC_CLOSEOUT="$(run_cmd closeout "$RUN_DIR/005_closeout.log" bash "$CLOSEOUT_SH" help)"
[ -f "$DASH_SH" ] && RC_DASH="$(run_cmd dashboard "$RUN_DIR/006_dashboard.log" bash "$DASH_SH")"
[ -f "$HEALTH_SH" ] && RC_HEALTH="$(run_cmd health "$RUN_DIR/007_health.log" bash "$HEALTH_SH" help)"
[ -f "$SIGNOFF_SH" ] && RC_SIGNOFF="$(run_cmd signoff "$RUN_DIR/008_signoff.log" bash "$SIGNOFF_SH" help)"
[ -f "$GATE_SH" ] && RC_GATE="$(run_cmd gate "$RUN_DIR/009_gate.log" bash "$GATE_SH" help)"
[ -f "$PERSONA_RULE_SH" ] && RC_PERSONA_RULE="$(run_cmd persona_rule "$RUN_DIR/010_persona_rule.log" bash "$PERSONA_RULE_SH" help)"
[ -f "$PERSONA_ADD_SH" ] && RC_PERSONA_ADD="$(run_cmd persona_add "$RUN_DIR/011_persona_add.log" bash "$PERSONA_ADD_SH" help)"
[ -f "$PERSONA_IMPACT_SH" ] && RC_PERSONA_IMPACT="$(run_cmd persona_impact "$RUN_DIR/012_persona_impact.log" bash "$PERSONA_IMPACT_SH" help)"
[ -f "$PERSONA_WORDING_SH" ] && RC_PERSONA_WORDING="$(run_cmd persona_wording "$RUN_DIR/013_persona_wording.log" bash "$PERSONA_WORDING_SH" help)"
[ -f "$PERSONA_RECHECK_SH" ] && RC_PERSONA_RECHECK="$(run_cmd persona_recheck "$RUN_DIR/014_persona_recheck.log" bash "$PERSONA_RECHECK_SH" help)"
[ -f "$PERSONA_FINAL_PORTAL_SH" ] && RC_PERSONA_FINAL_PORTAL="$(run_cmd persona_final_portal "$RUN_DIR/015_persona_final_portal.log" bash "$PERSONA_FINAL_PORTAL_SH" help)"
[ -f "$FINAL_LANDING_SH" ] && RC_FINAL_LANDING="$(run_cmd final_landing "$RUN_DIR/016_final_landing.log" bash "$FINAL_LANDING_SH" help)"
[ -f "$UPPER_CANON_SH" ] && RC_UPPER_CANON="$(run_cmd upper_canon "$RUN_DIR/017_upper_canon.log" bash "$UPPER_CANON_SH" help)"
[ -f "$COMPLETION_SH" ] && RC_COMPLETION="$(run_cmd completion "$RUN_DIR/018_completion.log" bash "$COMPLETION_SH" help)"
[ -f "$MASTER_BUNDLE_SH" ] && RC_MASTER_BUNDLE="$(run_cmd master_bundle "$RUN_DIR/019_master_bundle.log" bash "$MASTER_BUNDLE_SH" help)"
[ -f "$CERTIFY_SH" ] && RC_CERTIFY="$(run_cmd certify "$RUN_DIR/020_certify.log" bash "$CERTIFY_SH" report)"
[ -f "$SWEEP_SH" ] && RC_SWEEP="$(run_cmd sweep "$RUN_DIR/021_sweep.log" bash "$SWEEP_SH")"
[ -f "$NEXTCHAT_SH" ] && RC_NEXTCHAT="$(run_cmd nextchat "$RUN_DIR/022_nextchat.log" bash "$NEXTCHAT_SH" help)"
[ -f "$RESUME_SH" ] && RC_RESUME="$(run_cmd resume "$RUN_DIR/023_resume.log" bash "$RESUME_SH" help)"
[ -f "$TRACE_SH" ] && RC_TRACE="$(run_cmd trace "$RUN_DIR/024_trace.log" bash "$TRACE_SH" help)"
[ -f "$QUESTION_SH" ] && RC_QUESTION="$(run_cmd question "$RUN_DIR/025_question.log" bash "$QUESTION_SH" help)"

cat > "$SUMMARY" <<EOF2
# ============================================================
# STATIC ART OS LAUNCHER SMOKE CHECK SUMMARY
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_dir:
- $RUN_DIR

results:

| Launcher | File Status | RC |
|---|---|---:|
| registry | $(file_status "$REGISTRY_SH") | $RC_REGISTRY |
| standalone_master | $(file_status "$MASTER_SH") | $RC_MASTER |
| start_here | $(file_status "$START_SH") | $RC_START |
| review_portal | $(file_status "$REVIEW_SH") | $RC_REVIEW |
| closeout_portal | $(file_status "$CLOSEOUT_SH") | $RC_CLOSEOUT |
| refresh_dashboard | $(file_status "$DASH_SH") | $RC_DASH |
| healthcheck | $(file_status "$HEALTH_SH") | $RC_HEALTH |
| signoff_portal | $(file_status "$SIGNOFF_SH") | $RC_SIGNOFF |
| pre_implementation_gate | $(file_status "$GATE_SH") | $RC_GATE |
| persona_rule_review | $(file_status "$PERSONA_RULE_SH") | $RC_PERSONA_RULE |
| persona_addendum_review | $(file_status "$PERSONA_ADD_SH") | $RC_PERSONA_ADD |
| persona_impact_review | $(file_status "$PERSONA_IMPACT_SH") | $RC_PERSONA_IMPACT |
| persona_wording_review | $(file_status "$PERSONA_WORDING_SH") | $RC_PERSONA_WORDING |
| persona_final_recheck | $(file_status "$PERSONA_RECHECK_SH") | $RC_PERSONA_RECHECK |
| persona_final_portal | $(file_status "$PERSONA_FINAL_PORTAL_SH") | $RC_PERSONA_FINAL_PORTAL |
| final_landing_portal | $(file_status "$FINAL_LANDING_SH") | $RC_FINAL_LANDING |
| upper_canon_review | $(file_status "$UPPER_CANON_SH") | $RC_UPPER_CANON |
| design_completion_portal | $(file_status "$COMPLETION_SH") | $RC_COMPLETION |
| master_final_bundle | $(file_status "$MASTER_BUNDLE_SH") | $RC_MASTER_BUNDLE |
| master_final_certify | $(file_status "$CERTIFY_SH") | $RC_CERTIFY |
| master_readonly_sweep | $(file_status "$SWEEP_SH") | $RC_SWEEP |
| next_chat_handoff | $(file_status "$NEXTCHAT_SH") | $RC_NEXTCHAT |
| export_resume_portal | $(file_status "$RESUME_SH") | $RC_RESUME |
| traceability_lookup | $(file_status "$TRACE_SH") | $RC_TRACE |
| question_navigator | $(file_status "$QUESTION_SH") | $RC_QUESTION |

rule:
- RC 0 is expected.
- Non-zero RC should be reviewed in the corresponding log file.
- This smoke check is read-only.
EOF2

printf '\n============================================================\n'
printf 'STATICART LAUNCHER SMOKE CHECK DONE\n'
printf '============================================================\n'
printf 'RUN_DIR : %s\n' "$RUN_DIR"
printf 'SUMMARY : %s\n' "$SUMMARY"
printf '\n[SUMMARY HEAD]\n'
sed -n '1,220p' "$SUMMARY"
