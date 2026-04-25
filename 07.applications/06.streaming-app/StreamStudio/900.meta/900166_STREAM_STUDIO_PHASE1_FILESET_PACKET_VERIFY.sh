#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio"
REPORT="$HOME/.tmp/stream_studio_phase1_fileset_packet_report.txt"

pass_count=0
fail_count=0

pass() {
  pass_count=$((pass_count + 1))
  printf 'PASS: %s\n' "$1" >> "$REPORT"
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

mkdir -p "$HOME/.tmp"
: > "$REPORT"

printf '============================================================\n' >> "$REPORT"
printf 'STREAM STUDIO PHASE 1 FILESET PACKET VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/120.implementation/137_STREAM_STUDIO_PHASE1_BACKEND_ENDPOINT_IMPLEMENTATION_MAP.md"
require_file "$ROOT/120.implementation/138_STREAM_STUDIO_PHASE1_UI_COMPONENT_IMPLEMENTATION_MAP.md"
require_file "$ROOT/120.implementation/139_STREAM_STUDIO_PHASE1_DB_TABLE_IMPLEMENTATION_MAP.md"
require_file "$ROOT/120.implementation/140_STREAM_STUDIO_PHASE1_TESTCASE_MATRIX.md"
require_file "$ROOT/120.implementation/141_STREAM_STUDIO_PHASE1_REAL_BUILD_START_GUARDRAIL.md"
require_file "$ROOT/120.implementation/142_STREAM_STUDIO_PHASE1_BACKEND_FILE_SCAFFOLD_LEDGER.md"
require_file "$ROOT/120.implementation/143_STREAM_STUDIO_PHASE1_UI_FILE_SCAFFOLD_LEDGER.md"
require_file "$ROOT/120.implementation/144_STREAM_STUDIO_PHASE1_ROUTER_SERVICE_VALIDATOR_BINDING_MAP.md"
require_file "$ROOT/120.implementation/145_STREAM_STUDIO_PHASE1_TEST_FILE_SCAFFOLD_LEDGER.md"
require_file "$ROOT/120.implementation/146_STREAM_STUDIO_PHASE1_REAL_BUILD_FILESET_DECISION_MEMO.md"
require_file "$ROOT/900.meta/900165_STREAM_STUDIO_PHASE1_FILESET_PACKET_SUMMARY.md"
require_file "$ROOT/900.meta/900166_STREAM_STUDIO_PHASE1_FILESET_PACKET_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
