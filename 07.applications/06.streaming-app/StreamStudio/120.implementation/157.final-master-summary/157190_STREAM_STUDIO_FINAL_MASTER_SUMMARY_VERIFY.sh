#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/157.final-master-summary"
REPORT="$HOME/.tmp/stream_studio_final_master_summary_verify_report.txt"

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
printf 'STREAM STUDIO FINAL MASTER SUMMARY VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/157_OVERVIEW.md"
require_file "$ROOT/157_INDEX.md"
require_file "$ROOT/157000_STREAM_STUDIO_TOTAL_DESIGN_MASTER_SUMMARY.md"
require_file "$ROOT/157010_STREAM_STUDIO_DOCUMENT_SYSTEM_MAP.md"
require_file "$ROOT/157020_STREAM_STUDIO_CURRENT_STATUS_AND_NOT_IMPLEMENTED_LEDGER.md"
require_file "$ROOT/157030_STREAM_STUDIO_CANONICAL_REFERENCE_ORDER_FINAL.md"
require_file "$ROOT/157040_STREAM_STUDIO_NEXT_ACTION_POLICY_DESIGN_ONLY.md"
require_file "$ROOT/157099_STREAM_STUDIO_FINAL_MASTER_SUMMARY_PACKET_SUMMARY.md"
require_file "$ROOT/157190_STREAM_STUDIO_FINAL_MASTER_SUMMARY_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
