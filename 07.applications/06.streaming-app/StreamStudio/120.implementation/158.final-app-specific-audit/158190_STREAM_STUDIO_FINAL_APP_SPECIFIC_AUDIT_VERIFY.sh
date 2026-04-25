#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/158.final-app-specific-audit"
REPORT="$HOME/.tmp/stream_studio_final_app_specific_audit_verify_report.txt"

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
printf 'STREAM STUDIO FINAL APP SPECIFIC AUDIT VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/158_OVERVIEW.md"
require_file "$ROOT/158_INDEX.md"
require_file "$ROOT/158000_STREAM_STUDIO_APP_SPECIFIC_FINAL_AUDIT_MASTER.md"
require_file "$ROOT/158010_STREAM_STUDIO_SCREEN_API_RUNTIME_POLICY_CONSISTENCY_AUDIT.md"
require_file "$ROOT/158020_STREAM_STUDIO_PHASE_BOUNDARY_LEAKAGE_AUDIT.md"
require_file "$ROOT/158030_STREAM_STUDIO_APP_SPECIFIC_SCOPE_PURITY_MEMO.md"
require_file "$ROOT/158040_STREAM_STUDIO_REMAINING_GAPS_AND_OPTIONAL_ITEMS_LEDGER.md"
require_file "$ROOT/158099_STREAM_STUDIO_FINAL_APP_SPECIFIC_AUDIT_SUMMARY.md"
require_file "$ROOT/158190_STREAM_STUDIO_FINAL_APP_SPECIFIC_AUDIT_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
