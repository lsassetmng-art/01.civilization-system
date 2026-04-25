#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation"
DIR495="$BASE/018.meta/495.execution-block-preparation"
DIR470="$BASE/018.meta/470.cross-cutting-completion"
DIR520="$BASE/018.meta/520.phase1-actual-block-authoring"

HELPER_PATHS="$DIR495/1201849305_CIVILIZATION_PHASE1_RUNNER_HELPERS_PATHS_HELPER.md"
RERUN_CHECK="$DIR495/1201849306_CIVILIZATION_PHASE1_RUNNER_HELPERS_RERUN_SAFETY_CHECKLIST.md"
TARGET_LIST="$DIR520/1201849307_CIVILIZATION_PHASE1_FILEGEN_001_GENERATED_HELPER_TARGET_LIST.md"
EXEC_REPORT="$DIR470/1201849308_CIVILIZATION_PHASE1_FILEGEN_001_EXECUTION_REPORT.md"

F_ENTRY_CHECK="$BASE/018.meta/495.execution-block-preparation/1201849013_CIVILIZATION_EXECUTION_PHASE_1_ENTRY_CHECKLIST.md"
F_SCOPE_LOCK="$BASE/018.meta/495.execution-block-preparation/1201849014_CIVILIZATION_EXECUTION_PHASE_1_SCOPE_LOCK_RULE.md"
F_ENV_CHECK="$BASE/018.meta/495.execution-block-preparation/1201849015_CIVILIZATION_EXECUTION_PHASE_1_ENVIRONMENT_DECLARATION_CHECKLIST.md"
F_GONOGO="$BASE/018.meta/495.execution-block-preparation/1201849016_CIVILIZATION_EXECUTION_PHASE_1_GO_NO_GO_GATE.md"
F_ACTUAL_BLOCK="$BASE/018.meta/520.phase1-actual-block-authoring/1201849301_CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS_ACTUAL_BLOCK.md"
F_TARGET_MANIFEST="$BASE/018.meta/520.phase1-actual-block-authoring/1201849302_CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS_TARGET_LIST_MANIFEST.md"
F_OUTPUT_MANIFEST="$BASE/018.meta/520.phase1-actual-block-authoring/1201849303_CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS_OUTPUT_MANIFEST.md"

mkdir -p "$DIR495" "$DIR470" "$DIR520" "$HOME/.tmp"

require_file() {
  f="$1"
  if [ ! -f "$f" ]; then
    echo "ERROR: prerequisite missing -> $f" >&2
    exit 1
  fi
}

write_if_missing() {
  file="$1"
  tmp="$HOME/.tmp/filegen001_$$.tmp"
  if [ -e "$file" ]; then
    echo "SKIP: already exists -> $file"
    cat >/dev/null
    return 1
  fi
  cat > "$tmp"
  mv "$tmp" "$file"
  echo "CREATED: $file"
  return 0
}

for f in \
  "$F_ENTRY_CHECK" \
  "$F_SCOPE_LOCK" \
  "$F_ENV_CHECK" \
  "$F_GONOGO" \
  "$F_ACTUAL_BLOCK" \
  "$F_TARGET_MANIFEST" \
  "$F_OUTPUT_MANIFEST"
do
  require_file "$f"
done

created_count=0
skipped_count=0

if write_if_missing "$HELPER_PATHS" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 RUNNER HELPERS PATHS HELPER
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849305
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical helper paths used by the first phase 1 FILEGEN block.

## 2. Helper Path Set

- execution block script path
- helper paths manifest path
- rerun safety checklist path
- generated helper target list path
- execution report path

## 3. Canonical Paths

- 018.meta/520.phase1-actual-block-authoring/1201849304_CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS_EXECUTION_BLOCK.sh
- 018.meta/495.execution-block-preparation/1201849305_CIVILIZATION_PHASE1_RUNNER_HELPERS_PATHS_HELPER.md
- 018.meta/495.execution-block-preparation/1201849306_CIVILIZATION_PHASE1_RUNNER_HELPERS_RERUN_SAFETY_CHECKLIST.md
- 018.meta/520.phase1-actual-block-authoring/1201849307_CIVILIZATION_PHASE1_FILEGEN_001_GENERATED_HELPER_TARGET_LIST.md
- 018.meta/470.cross-cutting-completion/1201849308_CIVILIZATION_PHASE1_FILEGEN_001_EXECUTION_REPORT.md
DOC
then
  created_count=$((created_count + 1))
else
  skipped_count=$((skipped_count + 1))
fi

if write_if_missing "$RERUN_CHECK" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 RUNNER HELPERS RERUN SAFETY CHECKLIST
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849306
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rerun-safety checklist for FILEGEN_001.

## 2. Required Rerun-Safe Posture

- create-if-missing
- skip-if-already-present
- no SQL execution
- no DDL execution
- no seed insertion
- no runtime mutation
- fail closed on missing prerequisite docs

## 3. Execution Interpretation

A successful FILEGEN_001 run means helper artifacts were generated.
It does not mean phase 1 is complete.
DOC
then
  created_count=$((created_count + 1))
else
  skipped_count=$((skipped_count + 1))
fi

if write_if_missing "$TARGET_LIST" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 FILEGEN 001 GENERATED HELPER TARGET LIST
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 520.phase1-actual-block-authoring
document_id: 1201849307
owner: Boss
prepared_by: Zero
language: English

## 1. Generated Target Family

- runner helper paths helper
- rerun safety checklist
- generated helper target list
- execution report

## 2. Scope Rule

These are helper/support outputs only.
No SQL, DDL, seed, or runtime mutation is included.
DOC
then
  created_count=$((created_count + 1))
else
  skipped_count=$((skipped_count + 1))
fi

cat > "$EXEC_REPORT" <<EOF2
# ============================================================
# CIVILIZATION PHASE1 FILEGEN 001 EXECUTION REPORT
# ============================================================

status: executed-helper-filegen
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201849308
owner: Boss
prepared_by: Zero
language: English

## 1. Execution Identity

block_code:
- CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS

block_class:
- FILEGEN

execution_kind:
- helper-only
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

- created_count: $created_count
- skipped_count: $skipped_count
- generated_report: yes

## 4. Generated Targets

- $HELPER_PATHS
- $RERUN_CHECK
- $TARGET_LIST
- $EXEC_REPORT

## 5. Interpretation

This run generated helper/support artifacts only.

It does not mean:
- phase 1 complete
- DB executed
- verify complete for all phase 1
- phase 2 started
EOF2

echo "============================================================"
echo "FILEGEN_001 EXECUTION SUMMARY"
echo "============================================================"
echo "created_count=$created_count"
echo "skipped_count=$skipped_count"
echo "report=$EXEC_REPORT"
