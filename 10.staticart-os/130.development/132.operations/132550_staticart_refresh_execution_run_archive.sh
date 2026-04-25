#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
RUN_BASE="$ROOT/920.meta/085.execution_runs"
META="$ROOT/920.meta/086.execution_run_archive_pack"

REGISTRY_MD="$META/000001_STATIC_ART_OS_EXECUTION_RUN_REGISTRY.md"
LATEST_MD="$META/000002_STATIC_ART_OS_LATEST_EXECUTION_RUN_NOTE.md"
REPORT_MD="$META/000003_STATIC_ART_OS_EXECUTION_RUN_ARCHIVE_PACK_REPORT.md"

mkdir -p "$RUN_BASE" "$META" "$HOME/.tmp"

TMP_RUNS="$HOME/.tmp/staticart_execution_runs.txt"
find "$RUN_BASE" -mindepth 1 -maxdepth 1 -type d | sort > "$TMP_RUNS"

RUN_COUNT="$(wc -l < "$TMP_RUNS" | tr -d ' ')"

LATEST_RUN="-"
if [ "$RUN_COUNT" -gt 0 ]; then
  LATEST_RUN="$(tail -n 1 "$TMP_RUNS")"
fi

{
  printf '%s\n' '# ============================================================'
  printf '%s\n' '# STATIC ART OS EXECUTION RUN REGISTRY'
  printf '%s\n' '# ============================================================'
  printf '\n'
  printf '%s\n' 'status: execution-run-registry'
  printf '%s\n' 'system: StaticArtOS'
  printf '%s\n' 'mode: standalone'
  printf '%s\n' 'persona_rule_mode: signed-snapshot-consumption-only'
  printf '%s\n' 'owner: Boss'
  printf '%s\n' 'prepared_by: Zero'
  printf '\n'
  printf 'run_base: %s\n' "$RUN_BASE"
  printf 'run_count: %s\n' "$RUN_COUNT"
  printf '\n'
  printf '| Run Dir | README | Session | Postrun | Report |\n'
  printf '|---|---|---|---|---|\n'

  if [ "$RUN_COUNT" -eq 0 ]; then
    printf '| - | - | - | - | - |\n'
  else
    while IFS= read -r run; do
      rel="${run#$ROOT/}"

      readme='NG'
      session='NG'
      postrun='NG'
      report='NG'

      [ -f "$run/000001_RUN_README.md" ] && readme='OK'
      [ -f "$run/000010_EXECUTION_SESSION_LOG.md" ] && session='OK'
      [ -f "$run/000020_POST_RUN_SUMMARY.md" ] && postrun='OK'
      [ -f "$run/000070_RUN_WORKSPACE_PREP_REPORT.md" ] && report='OK'

      printf '| %s | %s | %s | %s | %s |\n' "$rel" "$readme" "$session" "$postrun" "$report"
    done < "$TMP_RUNS"
  fi
} > "$REGISTRY_MD"

{
  printf '%s\n' '# ============================================================'
  printf '%s\n' '# STATIC ART OS LATEST EXECUTION RUN NOTE'
  printf '%s\n' '# ============================================================'
  printf '\n'
  printf '%s\n' 'status: latest-execution-run-note'
  printf '%s\n' 'system: StaticArtOS'
  printf '%s\n' 'mode: standalone'
  printf '%s\n' 'persona_rule_mode: signed-snapshot-consumption-only'
  printf '%s\n' 'owner: Boss'
  printf '%s\n' 'prepared_by: Zero'
  printf '\n'
  printf 'run_base: %s\n' "$RUN_BASE"
  printf 'latest_run: %s\n' "$LATEST_RUN"
  printf '\n'

  if [ "$LATEST_RUN" = "-" ]; then
    printf '%s\n' 'note:'
    printf '%s\n' '- no execution runs exist yet'
  else
    printf '%s\n' 'recommended_files:'
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000001_RUN_README.md"
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000010_EXECUTION_SESSION_LOG.md"
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000020_POST_RUN_SUMMARY.md"
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000030_BLOCKERS.md"
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000040_WARNINGS.md"
    printf '%s\n' "- ${LATEST_RUN#$ROOT/}/000070_RUN_WORKSPACE_PREP_REPORT.md"
  fi
} > "$LATEST_MD"

cat > "$REPORT_MD" <<EOF2
# ============================================================
# STATIC ART OS EXECUTION RUN ARCHIVE PACK REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- registry_md: $REGISTRY_MD
- latest_md: $LATEST_MD
- refresh_sh: $ROOT/132.operations/132550_staticart_refresh_execution_run_archive.sh
- portal_sh: $ROOT/132.operations/132560_staticart_execution_run_archive_portal.sh
- report_md: $REPORT_MD

counts:
- run_count: $RUN_COUNT

latest_run:
- $LATEST_RUN

result:
- execution run registry refreshed
- latest execution run note refreshed

rule:
- This pack is execution-run archive oriented.
- It does not perform DB writes.
EOF2

rm -f "$TMP_RUNS"

printf '\n============================================================\n'
printf 'STATICART EXECUTION RUN ARCHIVE REFRESH DONE\n'
printf '============================================================\n'
printf 'REGISTRY: %s\n' "$REGISTRY_MD"
printf 'LATEST  : %s\n' "$LATEST_MD"
printf 'REPORT  : %s\n' "$REPORT_MD"
