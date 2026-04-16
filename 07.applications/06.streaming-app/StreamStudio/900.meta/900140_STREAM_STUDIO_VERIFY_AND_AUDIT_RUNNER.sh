#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/07.applications/06.streaming-app/StreamStudio"
TMP_DIR="$HOME/.tmp"
REPORT="$TMP_DIR/stream_studio_verify_audit_report.txt"
INDEX_TMP="$TMP_DIR/stream_studio_index_paths.txt"
MISSING_TMP="$TMP_DIR/stream_studio_missing_paths.txt"
MARKER_MISSING_TMP="$TMP_DIR/stream_studio_integrated_marker_missing.txt"

pass_count=0
warn_count=0
fail_count=0

pass() {
  pass_count=$((pass_count + 1))
  printf 'PASS: %s\n' "$1" >> "$REPORT"
}

warn() {
  warn_count=$((warn_count + 1))
  printf 'WARN: %s\n' "$1" >> "$REPORT"
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

: > "$REPORT"
: > "$INDEX_TMP"
: > "$MISSING_TMP"
: > "$MARKER_MISSING_TMP"

printf '============================================================\n' >> "$REPORT"
printf 'STREAM STUDIO VERIFY / AUDIT REPORT\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'ROOT=%s\n' "$ROOT" >> "$REPORT"
printf '\n' >> "$REPORT"

if [ ! -d "$ROOT" ]; then
  fail "root directory missing -> $ROOT"
  printf '\n============================================================\n' >> "$REPORT"
  printf 'SUMMARY\n' >> "$REPORT"
  printf '============================================================\n' >> "$REPORT"
  printf 'PASS=%s WARN=%s FAIL=%s\n' "$pass_count" "$warn_count" "$fail_count" >> "$REPORT"
  cat "$REPORT"
  exit 1
fi

pass "root directory exists -> $ROOT"

ROOT_INDEX="$ROOT/000_STREAM_STUDIO_INDEX.md"
ROOT_OVERVIEW="$ROOT/000_STREAM_STUDIO_OVERVIEW.md"
INTEGRATED="$ROOT/00_STREAM_STUDIO_INTEGRATED.md"

require_file "$ROOT_INDEX"
require_file "$ROOT_OVERVIEW"
require_file "$INTEGRATED"

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 1: EXTRACT INDEX PATHS\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

awk '
  /^[[:space:]]*-[[:space:]]+/ {
    line=$0
    sub(/^[[:space:]]*-[[:space:]]+/, "", line)
    if (line ~ /\.md$/ || line ~ /\.sh$/) print line
  }
' "$ROOT_INDEX" | while IFS= read -r rel; do
  [ -n "$rel" ] || continue
  printf '%s/%s\n' "$ROOT" "$rel" >> "$INDEX_TMP"
done

if [ -s "$INDEX_TMP" ]; then
  pass "root index path extraction succeeded"
else
  fail "root index path extraction returned empty"
fi

printf '\n[ROOT INDEX PATH COUNT]\n' >> "$REPORT"
wc -l "$INDEX_TMP" >> "$REPORT" || true

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 2: VERIFY ROOT INDEX TARGET FILES\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

while IFS= read -r path; do
  [ -n "$path" ] || continue
  if [ -f "$path" ]; then
    pass "indexed file exists -> $path"
  else
    fail "indexed file missing -> $path"
    printf '%s\n' "$path" >> "$MISSING_TMP"
  fi
done < "$INDEX_TMP"

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 3: VERIFY SUB INDEX FILES\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

find "$ROOT" -type f \( -name '*_INDEX.md' -o -name '[0-9][0-9][0-9]_INDEX.md' \) | sort | while IFS= read -r idx; do
  pass "sub index found -> $idx"

  IDX_DIR="$(dirname "$idx")"
  awk '
    /^[[:space:]]*-[[:space:]]+/ {
      line=$0
      sub(/^[[:space:]]*-[[:space:]]+/, "", line)
      if (line ~ /\.md$/ || line ~ /\.sh$/) print line
    }
  ' "$idx" | while IFS= read -r rel; do
    [ -n "$rel" ] || continue
    target="$IDX_DIR/$rel"
    if [ -f "$target" ]; then
      pass "sub-indexed file exists -> $target"
    else
      fail "sub-indexed file missing -> $target"
      printf '%s\n' "$target" >> "$MISSING_TMP"
    fi
  done
done

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 4: VERIFY REQUIRED EXACT DOCS\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

require_file "$ROOT/040.screen-and-stateflow/051_STREAM_STUDIO_SCREEN_STATE_TRANSITION_EXACT_TABLE.md"
require_file "$ROOT/050.api/059_STREAM_STUDIO_VALIDATION_AND_ERROR_CODE_EXACT_TABLE.md"
require_file "$ROOT/070.operations/071_STREAM_STUDIO_RUNTIME_JOB_RETRY_AND_DEADLETTER_EXACT.md"
require_file "$ROOT/080.policy/081_STREAM_STUDIO_PERMISSION_MATRIX_EXACT.md"
require_file "$ROOT/120.implementation/121_STREAM_STUDIO_IMPLEMENTATION_READINESS_FINAL_FREEZE_MEMO.md"
require_file "$ROOT/120.implementation/122_STREAM_STUDIO_ENUM_LEDGER.md"
require_file "$ROOT/120.implementation/123_STREAM_STUDIO_FIELD_DICTIONARY.md"
require_file "$ROOT/120.implementation/124_STREAM_STUDIO_AUDIT_EVENT_CODE_LEDGER.md"
require_file "$ROOT/120.implementation/125_STREAM_STUDIO_DB_SIDE_MAPPING_DECISION_MEMO.md"
require_file "$ROOT/120.implementation/126_STREAM_STUDIO_EVENT_NAMING_LEDGER.md"
require_file "$ROOT/120.implementation/127_STREAM_STUDIO_UI_COPY_KEY_LEDGER.md"
require_file "$ROOT/120.implementation/128_STREAM_STUDIO_IMPLEMENTATION_DEPENDENCY_MEMO.md"
require_file "$ROOT/120.implementation/129_STREAM_STUDIO_IMPLEMENTATION_HANDOFF_CHECKLIST.md"
require_file "$ROOT/120.implementation/130_STREAM_STUDIO_DESIGN_COMPLETENESS_AUDIT_MEMO.md"
require_file "$ROOT/900.meta/900110_STREAM_STUDIO_COMMON_COMPONENT_CANDIDATES.md"
require_file "$ROOT/900.meta/900120_STREAM_STUDIO_CX22073_CANDIDATE_AREAS.md"
require_file "$ROOT/900.meta/900130_STREAM_STUDIO_RELEASE_SLICE.md"

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 5: VERIFY INTEGRATED MARKERS\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

if [ -f "$INTEGRATED" ]; then
  find "$ROOT" -type f ! -name "00_STREAM_STUDIO_INTEGRATED.md" | sort | while IFS= read -r f; do
    marker="<!-- BEGIN FILE: $f -->"
    if grep -Fq "$marker" "$INTEGRATED"; then
      pass "integrated marker found -> $f"
    else
      fail "integrated marker missing -> $f"
      printf '%s\n' "$f" >> "$MARKER_MISSING_TMP"
    fi
  done
else
  fail "integrated file missing, marker verification skipped"
fi

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 6: VERIFY DIRECTORY OVERVIEW / INDEX PRESENCE\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

for dir in \
  "$ROOT/010.constitution" \
  "$ROOT/020.architecture" \
  "$ROOT/030.model" \
  "$ROOT/040.screen-and-stateflow" \
  "$ROOT/050.api" \
  "$ROOT/060.integration" \
  "$ROOT/070.operations" \
  "$ROOT/080.policy" \
  "$ROOT/120.implementation" \
  "$ROOT/900.meta"
do
  base="$(basename "$dir" | cut -d'.' -f1)"
  overview="$dir/${base}_OVERVIEW.md"
  index="$dir/${base}_INDEX.md"

  if [ -f "$overview" ]; then
    pass "directory overview exists -> $overview"
  else
    fail "directory overview missing -> $overview"
  fi

  if [ -f "$index" ]; then
    pass "directory index exists -> $index"
  else
    fail "directory index missing -> $index"
  fi
done

printf '\n============================================================\n' >> "$REPORT"
printf 'STEP 7: WARNINGS\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"

if [ ! -s "$MISSING_TMP" ]; then
  pass "no indexed missing files detected"
else
  warn "indexed missing files detected"
fi

if [ ! -s "$MARKER_MISSING_TMP" ]; then
  pass "integrated markers complete"
else
  warn "integrated markers incomplete"
fi

printf '\n============================================================\n' >> "$REPORT"
printf 'SUMMARY\n' >> "$REPORT"
printf '============================================================\n' >> "$REPORT"
printf 'PASS=%s WARN=%s FAIL=%s\n' "$pass_count" "$warn_count" "$fail_count" >> "$REPORT"

if [ -s "$MISSING_TMP" ]; then
  printf '\n[MISSING FILES]\n' >> "$REPORT"
  sort -u "$MISSING_TMP" >> "$REPORT"
fi

if [ -s "$MARKER_MISSING_TMP" ]; then
  printf '\n[INTEGRATED MARKER MISSING]\n' >> "$REPORT"
  sort -u "$MARKER_MISSING_TMP" >> "$REPORT"
fi

cat "$REPORT"

if [ "$fail_count" -gt 0 ]; then
  exit 1
fi
