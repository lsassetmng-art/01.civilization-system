#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/161.quick-lookup-navigation"
REPORT="$HOME/.tmp/stream_studio_quick_lookup_navigation_verify_report.txt"

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
printf 'STREAM STUDIO QUICK LOOKUP NAVIGATION VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/161_OVERVIEW.md"
require_file "$ROOT/161_INDEX.md"
require_file "$ROOT/161000_STREAM_STUDIO_QUICK_LOOKUP_NAVIGATION_ATLAS.md"
require_file "$ROOT/161010_STREAM_STUDIO_TASK_TO_DOCUMENT_ROUTING_MAP.md"
require_file "$ROOT/161020_STREAM_STUDIO_PHASE_TO_DOCUMENT_ENTRYPOINT_MAP.md"
require_file "$ROOT/161030_STREAM_STUDIO_WHERE_TO_READ_FIRST_GUIDE.md"
require_file "$ROOT/161099_STREAM_STUDIO_QUICK_LOOKUP_NAVIGATION_SUMMARY.md"
require_file "$ROOT/161190_STREAM_STUDIO_QUICK_LOOKUP_NAVIGATION_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
