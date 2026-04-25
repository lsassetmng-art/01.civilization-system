#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio/120.implementation/156.phase1-to-phase6-master-roadmap"
REPORT="$HOME/.tmp/stream_studio_phase1_to_phase6_master_roadmap_verify_report.txt"

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
printf 'STREAM STUDIO PHASE1 TO PHASE6 MASTER ROADMAP VERIFY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/156_OVERVIEW.md"
require_file "$ROOT/156_INDEX.md"
require_file "$ROOT/156000_STREAM_STUDIO_PHASE1_TO_PHASE6_MASTER_ROADMAP_ATLAS.md"
require_file "$ROOT/156010_STREAM_STUDIO_PHASE_COMPARISON_MATRIX.md"
require_file "$ROOT/156020_STREAM_STUDIO_DEPENDENCY_HEATMAP_AND_CHAIN.md"
require_file "$ROOT/156030_STREAM_STUDIO_MILESTONE_AND_GATE_ATLAS.md"
require_file "$ROOT/156040_STREAM_STUDIO_RELEASE_SLICE_AND_DELIVERY_ATLAS.md"
require_file "$ROOT/156099_STREAM_STUDIO_PHASE1_TO_PHASE6_MASTER_ROADMAP_SUMMARY.md"
require_file "$ROOT/156190_STREAM_STUDIO_PHASE1_TO_PHASE6_MASTER_ROADMAP_VERIFY.sh"

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s FAIL=%s\n' "$pass_count" "$fail_count" >> "$REPORT"

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
