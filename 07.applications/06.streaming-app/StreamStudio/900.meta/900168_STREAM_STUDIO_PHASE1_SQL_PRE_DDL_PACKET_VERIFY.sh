#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio"
REPORT="$HOME/.tmp/stream_studio_phase1_sql_pre_ddl_packet_report.txt"

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
printf 'STREAM STUDIO PHASE 1 SQL PRE-DDL PACKET VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/120.implementation/147_STREAM_STUDIO_PHASE1_SQL_PRE_DDL_BATCH_PACK.md"
require_file "$ROOT/120.implementation/148_STREAM_STUDIO_PHASE1_TABLE_DDL_EXACT_DESIGN.md"
require_file "$ROOT/120.implementation/149_STREAM_STUDIO_PHASE1_INDEX_FK_CONSTRAINT_EXACT_DESIGN.md"
require_file "$ROOT/120.implementation/150_STREAM_STUDIO_PHASE1_AUDIT_AND_RUNTIME_DDL_EXACT_DESIGN.md"
require_file "$ROOT/120.implementation/151_STREAM_STUDIO_PHASE1_MIGRATION_UNIT_SPLIT_PLAN.md"
require_file "$ROOT/120.implementation/152_STREAM_STUDIO_PHASE1_PSQL_APPLY_PREFLIGHT_MEMO.md"
require_file "$ROOT/900.meta/900167_STREAM_STUDIO_PHASE1_SQL_PRE_DDL_PACKET_SUMMARY.md"
require_file "$ROOT/900.meta/900168_STREAM_STUDIO_PHASE1_SQL_PRE_DDL_PACKET_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
