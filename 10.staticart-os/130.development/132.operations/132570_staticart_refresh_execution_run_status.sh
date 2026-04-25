#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
RUN_BASE="$ROOT/920.meta/085.execution_runs"
META="$ROOT/920.meta/087.execution_run_status_pack"

STATUS_MD="$META/000001_STATIC_ART_OS_EXECUTION_RUN_STATUS_BOARD.md"
COMPARE_MD="$META/000002_STATIC_ART_OS_LATEST_VS_PREVIOUS_RUN_COMPARISON_NOTE.md"
REPORT_MD="$META/000003_STATIC_ART_OS_EXECUTION_RUN_STATUS_PACK_REPORT.md"

mkdir -p "$RUN_BASE" "$META" "$HOME/.tmp"

TMP_RUNS="$HOME/.tmp/staticart_run_status_runs.txt"
find "$RUN_BASE" -mindepth 1 -maxdepth 1 -type d | sort > "$TMP_RUNS"

RUN_COUNT="$(wc -l < "$TMP_RUNS" | tr -d ' ')"

LATEST_RUN="-"
PREV_RUN="-"

if [ "$RUN_COUNT" -ge 1 ]; then
  LATEST_RUN="$(tail -n 1 "$TMP_RUNS")"
fi

if [ "$RUN_COUNT" -ge 2 ]; then
  PREV_RUN="$(tail -n 2 "$TMP_RUNS" | head -n 1)"
fi

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

file_nonempty_status() {
  local file="$1"
  if [ -s "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

run_stamp_from_path() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    basename "$run"
  fi
}

run_readme_status() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    file_status "$run/000001_RUN_README.md"
  fi
}

run_session_status() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    file_status "$run/000010_EXECUTION_SESSION_LOG.md"
  fi
}

run_postrun_status() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    file_status "$run/000020_POST_RUN_SUMMARY.md"
  fi
}

run_rawlog_status() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    file_nonempty_status "$run/000050_RAW_COMMAND_LOG.txt"
  fi
}

run_report_status() {
  local run="$1"
  if [ "$run" = "-" ]; then
    printf '-'
  else
    file_status "$run/000070_RUN_WORKSPACE_PREP_REPORT.md"
  fi
}

{
  cat <<EOF2
# ============================================================
# STATIC ART OS EXECUTION RUN STATUS BOARD
# ============================================================

status: execution-run-status-board
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

run_base:
- $RUN_BASE

run_count:
- $RUN_COUNT

latest_run:
- $LATEST_RUN

previous_run:
- $PREV_RUN

| Run Stamp | README | Session | Postrun | Raw Log Nonempty | Prep Report |
|---|---|---|---|---|---|
EOF2

  if [ "$RUN_COUNT" -eq 0 ]; then
    printf '| - | - | - | - | - | - |\n'
  else
    while IFS= read -r run; do
      printf '| %s | %s | %s | %s | %s | %s |\n' \
        "$(run_stamp_from_path "$run")" \
        "$(run_readme_status "$run")" \
        "$(run_session_status "$run")" \
        "$(run_postrun_status "$run")" \
        "$(run_rawlog_status "$run")" \
        "$(run_report_status "$run")"
    done < "$TMP_RUNS"
  fi

  cat <<'EOF2'

board_rule:
- README / Session / Postrun / Prep Report should normally exist for each run.
- Raw Log Nonempty becomes useful after commands actually run.
- This board is read-only.
EOF2
} > "$STATUS_MD"

latest_rel='-'
prev_rel='-'

if [ "$LATEST_RUN" != "-" ]; then
  latest_rel="${LATEST_RUN#$ROOT/}"
fi
if [ "$PREV_RUN" != "-" ]; then
  prev_rel="${PREV_RUN#$ROOT/}"
fi

cat > "$COMPARE_MD" <<EOF2
# ============================================================
# STATIC ART OS LATEST VS PREVIOUS RUN COMPARISON NOTE
# ============================================================

status: execution-run-comparison-note
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

latest_run:
- $latest_rel

previous_run:
- $prev_rel

comparison:
| Item | Latest | Previous |
|---|---|---|
| run_stamp | $(run_stamp_from_path "$LATEST_RUN") | $(run_stamp_from_path "$PREV_RUN") |
| readme | $(run_readme_status "$LATEST_RUN") | $(run_readme_status "$PREV_RUN") |
| session_log | $(run_session_status "$LATEST_RUN") | $(run_session_status "$PREV_RUN") |
| post_run_summary | $(run_postrun_status "$LATEST_RUN") | $(run_postrun_status "$PREV_RUN") |
| raw_log_nonempty | $(run_rawlog_status "$LATEST_RUN") | $(run_rawlog_status "$PREV_RUN") |
| prep_report | $(run_report_status "$LATEST_RUN") | $(run_report_status "$PREV_RUN") |

comparison_rule:
- If only one run exists, previous values remain '-'.
- Use this note to quickly compare latest evidence completeness.
- This comparison is structural/read-only only.
EOF2

cat > "$REPORT_MD" <<EOF2
# ============================================================
# STATIC ART OS EXECUTION RUN STATUS PACK REPORT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

outputs:
- status_md: $STATUS_MD
- compare_md: $COMPARE_MD
- refresh_sh: $ROOT/132.operations/132570_staticart_refresh_execution_run_status.sh
- portal_sh: $ROOT/132.operations/132580_staticart_execution_run_status_portal.sh
- report_md: $REPORT_MD

counts:
- run_count: $RUN_COUNT

latest_run:
- $LATEST_RUN

previous_run:
- $PREV_RUN

result:
- execution run status board refreshed
- latest vs previous comparison note refreshed

rule:
- This pack is execution-run status oriented.
- It does not perform DB writes.
EOF2

rm -f "$TMP_RUNS"

printf '\n============================================================\n'
printf 'STATICART EXECUTION RUN STATUS REFRESH DONE\n'
printf '============================================================\n'
printf 'STATUS : %s\n' "$STATUS_MD"
printf 'COMPARE: %s\n' "$COMPARE_MD"
printf 'REPORT : %s\n' "$REPORT_MD"
