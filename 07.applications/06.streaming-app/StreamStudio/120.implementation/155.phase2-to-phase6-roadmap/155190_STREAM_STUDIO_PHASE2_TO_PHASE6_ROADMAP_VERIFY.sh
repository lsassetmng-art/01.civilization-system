#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/155.phase2-to-phase6-roadmap"
REPORT="$HOME/.tmp/stream_studio_phase2_to_phase6_roadmap_verify_report.txt"

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
printf 'STREAM STUDIO PHASE2 TO PHASE6 ROADMAP VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/155_OVERVIEW.md"
require_file "$ROOT/155_INDEX.md"
require_file "$ROOT/155000_STREAM_STUDIO_PHASE2_TO_PHASE6_IMPLEMENTATION_ROADMAP.md"
require_file "$ROOT/155010_STREAM_STUDIO_PHASE2_REVIEW_APPROVAL_NOTIFICATION_ROADMAP.md"
require_file "$ROOT/155020_STREAM_STUDIO_PHASE3_MARKETPLACE_AND_PAID_VIDEO_ROADMAP.md"
require_file "$ROOT/155030_STREAM_STUDIO_PHASE4_MEMBERSHIP_ROADMAP.md"
require_file "$ROOT/155040_STREAM_STUDIO_PHASE5_COLLABORATOR_SPLIT_SETTLEMENT_ROADMAP.md"
require_file "$ROOT/155050_STREAM_STUDIO_PHASE6_EXTERNAL_PUSH_AND_OPS_HARDENING_ROADMAP.md"
require_file "$ROOT/155090_STREAM_STUDIO_CROSS_PHASE_DEPENDENCY_AND_RELEASE_ORDER.md"
require_file "$ROOT/155099_STREAM_STUDIO_PHASE2_TO_PHASE6_ROADMAP_SUMMARY.md"
require_file "$ROOT/155190_STREAM_STUDIO_PHASE2_TO_PHASE6_ROADMAP_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
