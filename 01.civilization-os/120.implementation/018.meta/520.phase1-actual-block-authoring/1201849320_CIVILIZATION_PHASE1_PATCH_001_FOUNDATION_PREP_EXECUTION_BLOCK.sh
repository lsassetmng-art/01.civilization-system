#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation"
DIR350="$BASE/018.meta/350.integrated-master"
DIR470="$BASE/018.meta/470.cross-cutting-completion"
DIR520="$BASE/018.meta/520.phase1-actual-block-authoring"

PATCH_TARGET_LIST="$DIR520/1201849321_CIVILIZATION_PHASE1_PATCH_001_GENERATED_PATCH_TARGET_LIST.md"
EXEC_REPORT="$DIR470/1201849322_CIVILIZATION_PHASE1_PATCH_001_EXECUTION_REPORT.md"

F_ENTRY_CHECK="$BASE/018.meta/495.execution-block-preparation/1201849013_CIVILIZATION_EXECUTION_PHASE_1_ENTRY_CHECKLIST.md"
F_SCOPE_LOCK="$BASE/018.meta/495.execution-block-preparation/1201849014_CIVILIZATION_EXECUTION_PHASE_1_SCOPE_LOCK_RULE.md"
F_ENV_CHECK="$BASE/018.meta/495.execution-block-preparation/1201849015_CIVILIZATION_EXECUTION_PHASE_1_ENVIRONMENT_DECLARATION_CHECKLIST.md"
F_GONOGO="$BASE/018.meta/495.execution-block-preparation/1201849016_CIVILIZATION_EXECUTION_PHASE_1_GO_NO_GO_GATE.md"

F_ACTUAL_BLOCK="$DIR520/1201849317_CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP_ACTUAL_BLOCK.md"
F_TARGET_MANIFEST="$DIR520/1201849318_CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP_TARGET_MANIFEST.md"
F_OUTPUT_MANIFEST="$DIR520/1201849319_CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP_OUTPUT_MANIFEST.md"

F_MASTER="$DIR350/1201835001_INTEGRATED_MASTER_IMPLEMENTATION.md"
F_PRESTATUS="$DIR350/1201835006_CIVILIZATION_PREIMPLEMENTATION_STATUS_AND_NEXT_PHASE_ROADMAP.md"
F_INTEGRATED_STATUS="$DIR350/1201835007_CIVILIZATION_EXECUTION_PHASE_1_INTEGRATED_STATUS.md"
F_FINAL_ROADMAP="$DIR350/1201835008_CIVILIZATION_PHASE1_FINAL_AUTHORING_ROADMAP.md"

mkdir -p "$DIR350" "$DIR470" "$DIR520" "$HOME/.tmp"

require_file() {
  f="$1"
  if [ ! -f "$f" ]; then
    echo "ERROR: prerequisite missing -> $f" >&2
    exit 1
  fi
}

append_once() {
  file="$1"
  marker="$2"
  tmp="$HOME/.tmp/patch001_append_$$.tmp"

  if [ ! -f "$file" ]; then
    echo "ERROR: patch target missing -> $file" >&2
    exit 1
  fi

  if grep -Fq "$marker" "$file"; then
    echo "SKIP: already patched -> $file"
    cat >/dev/null
    return 1
  fi

  cat "$file" > "$tmp"
  printf '\n%s\n' "$marker" >> "$tmp"
  cat >> "$tmp"
  mv "$tmp" "$file"
  echo "PATCHED: $file"
  return 0
}

for f in \
  "$F_ENTRY_CHECK" \
  "$F_SCOPE_LOCK" \
  "$F_ENV_CHECK" \
  "$F_GONOGO" \
  "$F_ACTUAL_BLOCK" \
  "$F_TARGET_MANIFEST" \
  "$F_OUTPUT_MANIFEST" \
  "$F_MASTER" \
  "$F_PRESTATUS" \
  "$F_INTEGRATED_STATUS" \
  "$F_FINAL_ROADMAP"
do
  require_file "$f"
done

patched_count=0
skipped_count=0

append_once "$F_MASTER" "## Phase1 PATCH_001 Foundation Prep Update" <<'DOC' || skipped_count=$((skipped_count + 1))
## Phase1 PATCH_001 Foundation Prep Update

The first additive preparation patch block for phase 1 has been executed.

Patch class:
- PATCH
- additive only
- rerun-safe
- non-SQL

This patch confirms foundation-prep marker updates can be applied
without widening into DB or runtime execution.
DOC
if grep -Fq "## Phase1 PATCH_001 Foundation Prep Update" "$F_MASTER"; then patched_count=$((patched_count + 1)); fi

append_once "$F_INTEGRATED_STATUS" "## 11. Third Executed Block Update" <<'DOC' || skipped_count=$((skipped_count + 1))
## 11. Third Executed Block Update

The third executed phase 1 block is now:

- CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP

Execution scope:
- additive text patch only
- non-SQL
- non-DDL
- no runtime mutation

This update means:
- foundation-prep marker updates now exist on canonical phase 1 status docs

This update does not mean:
- DB execution started
- verify completed
- phase 1 completed
DOC
if grep -Fq "## 11. Third Executed Block Update" "$F_INTEGRATED_STATUS"; then patched_count=$((patched_count + 1)); fi

append_once "$F_FINAL_ROADMAP" "## Third Execution Recorded" <<'DOC' || skipped_count=$((skipped_count + 1))
## Third Execution Recorded

The third recorded phase 1 execution is now:

- CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP

This confirms phase 1 has entered additive foundation-prep patching
without widening into DB execution.
DOC
if grep -Fq "## Third Execution Recorded" "$F_FINAL_ROADMAP"; then patched_count=$((patched_count + 1)); fi

append_once "$F_PRESTATUS" "## Phase1 Third Execution Update" <<'DOC' || skipped_count=$((skipped_count + 1))
## Phase1 Third Execution Update

The third phase 1 execution step has completed at additive patch scope.

Executed:
- CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP

Execution class:
- PATCH
- additive only
- non-SQL

Not started:
- DB execution
- phase-wide verify judgment
- phase-wide report exit judgment
DOC
if grep -Fq "## Phase1 Third Execution Update" "$F_PRESTATUS"; then patched_count=$((patched_count + 1)); fi

cat > "$PATCH_TARGET_LIST" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 PATCH 001 GENERATED PATCH TARGET LIST
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 520.phase1-actual-block-authoring
document_id: 1201849321
owner: Boss
prepared_by: Zero
language: English

## 1. Patched Target Family

- 018.meta/350.integrated-master/1201835001_INTEGRATED_MASTER_IMPLEMENTATION.md
- 018.meta/350.integrated-master/1201835006_CIVILIZATION_PREIMPLEMENTATION_STATUS_AND_NEXT_PHASE_ROADMAP.md
- 018.meta/350.integrated-master/1201835007_CIVILIZATION_EXECUTION_PHASE_1_INTEGRATED_STATUS.md
- 018.meta/350.integrated-master/1201835008_CIVILIZATION_PHASE1_FINAL_AUTHORING_ROADMAP.md

## 2. Scope Rule

These are additive marker-based text patches only.
No SQL, DDL, seed, or runtime mutation is included.
DOC

cat > "$EXEC_REPORT" <<EOF2
# ============================================================
# CIVILIZATION PHASE1 PATCH 001 EXECUTION REPORT
# ============================================================

status: executed-additive-patch
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201849322
owner: Boss
prepared_by: Zero
language: English

## 1. Execution Identity

block_code:
- CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_PREP

block_class:
- PATCH

execution_kind:
- additive-only
- non-SQL
- rerun-safe

## 2. Prerequisite Check

- entry checklist present: yes
- scope lock present: yes
- environment declaration checklist present: yes
- go/no-go gate doc present: yes
- actual block doc present: yes
- target manifest present: yes
- output manifest present: yes

## 3. Output Summary

- patched_count: $patched_count
- skipped_count: $skipped_count
- generated_report: yes

## 4. Generated Targets

- $PATCH_TARGET_LIST
- $EXEC_REPORT

## 5. Interpretation

This run applied additive foundation-prep marker patches only.

It does not mean:
- DB executed
- phase 1 complete
- phase 1 verify complete
- phase 2 started
EOF2

echo "============================================================"
echo "PATCH_001 EXECUTION SUMMARY"
echo "============================================================"
echo "patched_count=$patched_count"
echo "skipped_count=$skipped_count"
echo "report=$EXEC_REPORT"
