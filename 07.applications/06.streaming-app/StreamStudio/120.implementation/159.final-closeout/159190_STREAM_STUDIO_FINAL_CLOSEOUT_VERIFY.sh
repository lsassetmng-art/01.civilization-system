#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/159.final-closeout"
REPORT="$HOME/.tmp/stream_studio_final_closeout_verify_report.txt"

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
printf 'STREAM STUDIO FINAL CLOSEOUT VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/159_OVERVIEW.md"
require_file "$ROOT/159_INDEX.md"
require_file "$ROOT/159000_STREAM_STUDIO_FINAL_CLOSEOUT_MEMO.md"
require_file "$ROOT/159010_STREAM_STUDIO_DELIVERABLE_LEDGER_FINAL.md"
require_file "$ROOT/159020_STREAM_STUDIO_CHAT_SCOPE_AND_EXCLUSION_MEMO.md"
require_file "$ROOT/159030_STREAM_STUDIO_NEXT_CHAT_HANDOFF_NOTE.md"
require_file "$ROOT/159099_STREAM_STUDIO_FINAL_CLOSEOUT_PACKET_SUMMARY.md"
require_file "$ROOT/159190_STREAM_STUDIO_FINAL_CLOSEOUT_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
