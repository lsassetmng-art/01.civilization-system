#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/162.frozen-decision-register"
REPORT="$HOME/.tmp/stream_studio_frozen_decision_register_verify_report.txt"

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
printf 'STREAM STUDIO FROZEN DECISION REGISTER VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/162_OVERVIEW.md"
require_file "$ROOT/162_INDEX.md"
require_file "$ROOT/162000_STREAM_STUDIO_FROZEN_DECISION_MASTER_REGISTER.md"
require_file "$ROOT/162010_STREAM_STUDIO_PHASE1_FROZEN_DECISION_REGISTER.md"
require_file "$ROOT/162020_STREAM_STUDIO_POST_PHASE1_FROZEN_DECISION_REGISTER.md"
require_file "$ROOT/162030_STREAM_STUDIO_PROHIBITED_DRIFT_REGISTER.md"
require_file "$ROOT/162099_STREAM_STUDIO_FROZEN_DECISION_REGISTER_SUMMARY.md"
require_file "$ROOT/162190_STREAM_STUDIO_FROZEN_DECISION_REGISTER_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
