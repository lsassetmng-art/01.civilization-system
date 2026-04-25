#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/153.phase1-sql"
REPORT="$HOME/.tmp/stream_studio_phase1_sql_bundle_verify_report.txt"

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
printf 'STREAM STUDIO PHASE 1 SQL BUNDLE VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/153_OVERVIEW.md"
require_file "$ROOT/153_INDEX.md"
require_file "$ROOT/153000_STREAM_STUDIO_PHASE1_SQL_REAL_MIGRATION_BUNDLE.md"
require_file "$ROOT/153100_PHASE1_01_creator_project_and_member.sql"
require_file "$ROOT/153110_PHASE1_02_upload_job.sql"
require_file "$ROOT/153120_PHASE1_03_video_draft_marker_subtitle.sql"
require_file "$ROOT/153130_PHASE1_04_publish_setting_and_request.sql"
require_file "$ROOT/153140_PHASE1_05_runtime_and_dead_letter.sql"
require_file "$ROOT/153150_PHASE1_06_audit_event.sql"
require_file "$ROOT/153160_PHASE1_07_indexes_and_constraints.sql"
require_file "$ROOT/153170_PHASE1_APPLY_REVIEW_RUNNER.sh"
require_file "$ROOT/153180_PHASE1_PRE_APPLY_CHECKLIST.md"
require_file "$ROOT/153190_PHASE1_SQL_BUNDLE_VERIFY.sh"
require_file "$ROOT/153199_PHASE1_SQL_BUNDLE_SUMMARY.md"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
