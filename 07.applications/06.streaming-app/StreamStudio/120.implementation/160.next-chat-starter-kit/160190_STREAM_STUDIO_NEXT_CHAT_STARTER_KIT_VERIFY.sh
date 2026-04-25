#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/160.next-chat-starter-kit"
REPORT="$HOME/.tmp/stream_studio_next_chat_starter_kit_verify_report.txt"

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
printf 'STREAM STUDIO NEXT CHAT STARTER KIT VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/160_OVERVIEW.md"
require_file "$ROOT/160_INDEX.md"
require_file "$ROOT/160000_STREAM_STUDIO_NEXT_CHAT_STARTER_KIT.md"
require_file "$ROOT/160010_STREAM_STUDIO_DESIGN_ONLY_CHAT_START_PROMPT.md"
require_file "$ROOT/160020_STREAM_STUDIO_PHASE1_IMPLEMENTATION_PLANNING_CHAT_START_PROMPT.md"
require_file "$ROOT/160030_STREAM_STUDIO_PHASE1_SQL_REVIEW_CHAT_START_PROMPT.md"
require_file "$ROOT/160040_STREAM_STUDIO_REFERENCE_MINIMUM_SET_FOR_NEXT_CHAT.md"
require_file "$ROOT/160099_STREAM_STUDIO_NEXT_CHAT_STARTER_KIT_SUMMARY.md"
require_file "$ROOT/160190_STREAM_STUDIO_NEXT_CHAT_STARTER_KIT_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
