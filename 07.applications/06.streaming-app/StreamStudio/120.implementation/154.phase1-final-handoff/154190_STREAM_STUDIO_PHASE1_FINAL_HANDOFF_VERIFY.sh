#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/154.phase1-final-handoff"
REPORT="$HOME/.tmp/stream_studio_phase1_final_handoff_verify_report.txt"

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
printf 'STREAM STUDIO PHASE 1 FINAL HANDOFF VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/154_OVERVIEW.md"
require_file "$ROOT/154_INDEX.md"
require_file "$ROOT/154000_STREAM_STUDIO_PHASE1_PRE_IMPLEMENTATION_FINAL_DESIGN_FREEZE.md"
require_file "$ROOT/154010_STREAM_STUDIO_PHASE1_HANDOFF_READING_ORDER.md"
require_file "$ROOT/154020_STREAM_STUDIO_PHASE1_SCOPE_BOUNDARY_FINAL_MEMO.md"
require_file "$ROOT/154030_STREAM_STUDIO_PHASE1_GO_STOP_GATE_FINAL.md"
require_file "$ROOT/154040_STREAM_STUDIO_PHASE1_NON_BLOCKING_REMAINING_ITEMS_LEDGER.md"
require_file "$ROOT/154099_STREAM_STUDIO_PHASE1_FINAL_HANDOFF_SUMMARY.md"
require_file "$ROOT/154190_STREAM_STUDIO_PHASE1_FINAL_HANDOFF_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
