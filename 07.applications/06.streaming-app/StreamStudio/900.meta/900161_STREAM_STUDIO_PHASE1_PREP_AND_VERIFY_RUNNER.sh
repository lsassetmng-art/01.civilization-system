#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio"
TMP_DIR="$HOME/.tmp"
REPORT="$TMP_DIR/stream_studio_phase1_prep_verify_report.txt"

pass_count=0
warn_count=0
fail_count=0

pass() {
  pass_count=$((pass_count + 1))
  printf 'PASS: %s\n' "$1" >> "$REPORT"
}

warn() {
  warn_count=$((warn_count + 1))
  printf 'WARN: %s\n' "$1" >> "$REPORT"
}

fail() {
  fail_count=$((fail_count + 1))
  printf 'FAIL: %s\n' "$1" >> "$REPORT"
}

require_file() {
  if [ -f "$1" ]; then
    pass "file exists -> $1"
  else
    fail "file missing -> $1"
  fi
}

mkdir -p "$TMP_DIR"
: > "$REPORT"

printf '============================================================\n' >> "$REPORT"
printf 'STREAM STUDIO PHASE 1 PREP / VERIFY REPORT\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'ROOT=%s\n\n' "$ROOT" >> "$REPORT"

if [ ! -d "$ROOT" ]; then
  fail "root directory missing -> $ROOT"
  cat "$REPORT"
  exit 1
fi

pass "root directory exists -> $ROOT"

require_file "$ROOT/120.implementation/131_STREAM_STUDIO_PHASE1_IMPLEMENTATION_BATCH_PACK.md"
require_file "$ROOT/120.implementation/132_STREAM_STUDIO_PHASE1_BACKEND_WORKPACKAGE.md"
require_file "$ROOT/120.implementation/133_STREAM_STUDIO_PHASE1_UI_WORKPACKAGE.md"
require_file "$ROOT/120.implementation/134_STREAM_STUDIO_PHASE1_DB_WORKPACKAGE.md"
require_file "$ROOT/120.implementation/135_STREAM_STUDIO_PHASE1_TEST_AND_VERIFY_WORKPACKAGE.md"
require_file "$ROOT/120.implementation/136_STREAM_STUDIO_PHASE1_EXECUTION_ORDER_AND_CHECKPOINTS.md"

require_file "$ROOT/120.implementation/122_STREAM_STUDIO_ENUM_LEDGER.md"
require_file "$ROOT/120.implementation/123_STREAM_STUDIO_FIELD_DICTIONARY.md"
require_file "$ROOT/120.implementation/124_STREAM_STUDIO_AUDIT_EVENT_CODE_LEDGER.md"
require_file "$ROOT/120.implementation/125_STREAM_STUDIO_DB_SIDE_MAPPING_DECISION_MEMO.md"

require_file "$ROOT/050.api/051_STREAM_STUDIO_PROJECT_AND_UPLOAD_API_EXACT.md"
require_file "$ROOT/050.api/052_STREAM_STUDIO_DRAFT_ASSET_API_EXACT.md"
require_file "$ROOT/050.api/054_STREAM_STUDIO_PUBLISH_API_EXACT.md"
require_file "$ROOT/050.api/059_STREAM_STUDIO_VALIDATION_AND_ERROR_CODE_EXACT_TABLE.md"

require_file "$ROOT/040.screen-and-stateflow/041_STREAM_STUDIO_HOME_DASHBOARD_EXACT.md"
require_file "$ROOT/040.screen-and-stateflow/042_STREAM_STUDIO_PROJECT_DETAIL_EXACT.md"
require_file "$ROOT/040.screen-and-stateflow/043_STREAM_STUDIO_UPLOAD_QUEUE_EXACT.md"
require_file "$ROOT/040.screen-and-stateflow/045_STREAM_STUDIO_PUBLISH_SETTINGS_EXACT.md"
require_file "$ROOT/040.screen-and-stateflow/051_STREAM_STUDIO_SCREEN_STATE_TRANSITION_EXACT_TABLE.md"

require_file "$ROOT/080.policy/081_STREAM_STUDIO_PERMISSION_MATRIX_EXACT.md"
require_file "$ROOT/070.operations/071_STREAM_STUDIO_RUNTIME_JOB_RETRY_AND_DEADLETTER_EXACT.md"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s WARN=%s FAIL=%s\n' "$pass_count" "$warn_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
