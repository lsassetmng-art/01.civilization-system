#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation"
DIR495="$BASE/018.meta/495.execution-block-preparation"
DIR470="$BASE/018.meta/470.cross-cutting-completion"
DIR520="$BASE/018.meta/520.phase1-actual-block-authoring"

VERIFY_GROUPS="$DIR495/1201849313_CIVILIZATION_PHASE1_VERIFY_TARGET_GROUPS_HELPER.md"
VERIFY_ROOTS="$DIR495/1201849314_CIVILIZATION_PHASE1_VERIFY_TARGET_ROOTS_HELPER.md"
GENERATED_TARGET_LIST="$DIR520/1201849315_CIVILIZATION_PHASE1_FILEGEN_002_GENERATED_VERIFY_TARGET_LIST.md"
EXEC_REPORT="$DIR470/1201849316_CIVILIZATION_PHASE1_FILEGEN_002_EXECUTION_REPORT.md"

F_ENTRY_CHECK="$DIR495/1201849013_CIVILIZATION_EXECUTION_PHASE_1_ENTRY_CHECKLIST.md"
F_SCOPE_LOCK="$DIR495/1201849014_CIVILIZATION_EXECUTION_PHASE_1_SCOPE_LOCK_RULE.md"
F_ENV_CHECK="$DIR495/1201849015_CIVILIZATION_EXECUTION_PHASE_1_ENVIRONMENT_DECLARATION_CHECKLIST.md"
F_GONOGO="$DIR495/1201849016_CIVILIZATION_EXECUTION_PHASE_1_GO_NO_GO_GATE.md"
F_ACTUAL_BLOCK="$DIR520/1201849309_CIVILIZATION_PHASE1_FILEGEN_002_VERIFY_TARGET_LIST_ACTUAL_BLOCK.md"
F_TARGET_MANIFEST="$DIR520/1201849310_CIVILIZATION_PHASE1_FILEGEN_002_VERIFY_TARGET_LIST_TARGET_MANIFEST.md"
F_OUTPUT_MANIFEST="$DIR520/1201849311_CIVILIZATION_PHASE1_FILEGEN_002_VERIFY_TARGET_LIST_OUTPUT_MANIFEST.md"

mkdir -p "$DIR495" "$DIR470" "$DIR520" "$HOME/.tmp"

require_file() {
  f="$1"
  if [ ! -f "$f" ]; then
    echo "ERROR: prerequisite missing -> $f" >&2
    exit 1
  fi
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

if [ ! -e "$VERIFY_GROUPS" ]; then
  cat > "$VERIFY_GROUPS" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 VERIFY TARGET GROUPS HELPER
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849313
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the verification grouping family for phase 1 foundation verification support.

## 2. Target Groups

- entry-gate docs
- phase 1 scope docs
- phase 1 DB subset docs
- verify/report prep docs
- actual authored block docs
- execution report docs

## 3. Interpretation

This helper groups targets only.
It does not perform final verify judgment.
DOC
  echo "CREATED: $VERIFY_GROUPS"
  created_count=$((created_count + 1))
else
  echo "SKIP: already exists -> $VERIFY_GROUPS"
  skipped_count=$((skipped_count + 1))
fi

if [ ! -e "$VERIFY_ROOTS" ]; then
  cat > "$VERIFY_ROOTS" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 VERIFY TARGET ROOTS HELPER
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849314
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical root directories used for phase 1 verification target selection.

## 2. Canonical Roots

- 018.meta/350.integrated-master
- 018.meta/470.cross-cutting-completion
- 018.meta/495.execution-block-preparation
- 018.meta/500.phase1-future-block-slots
- 018.meta/510.phase1-authored-block-skeletons
- 018.meta/520.phase1-actual-block-authoring

## 3. Interpretation

These roots constrain verification-target selection.
They do not imply execution completeness.
DOC
  echo "CREATED: $VERIFY_ROOTS"
  created_count=$((created_count + 1))
else
  echo "SKIP: already exists -> $VERIFY_ROOTS"
  skipped_count=$((skipped_count + 1))
fi

if [ ! -e "$GENERATED_TARGET_LIST" ]; then
  cat > "$GENERATED_TARGET_LIST" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 FILEGEN 002 GENERATED VERIFY TARGET LIST
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 520.phase1-actual-block-authoring
document_id: 1201849315
owner: Boss
prepared_by: Zero
language: English

## 1. Generated Verify Target Family

- verify target groups helper
- verify target roots helper
- generated verify target list
- execution report

## 2. Scope Rule

These outputs support future phase 1 verification only.
They are non-SQL, non-DDL, and non-mutating.
DOC
  echo "CREATED: $GENERATED_TARGET_LIST"
  created_count=$((created_count + 1))
else
  echo "SKIP: already exists -> $GENERATED_TARGET_LIST"
  skipped_count=$((skipped_count + 1))
fi

cat > "$EXEC_REPORT" <<EOF2
# ============================================================
# CIVILIZATION PHASE1 FILEGEN 002 EXECUTION REPORT
# ============================================================

status: executed-helper-filegen
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201849316
owner: Boss
prepared_by: Zero
language: English

## 1. Execution Identity

block_code:
- CIVILIZATION_PHASE1_FILEGEN_002_VERIFY_TARGET_LIST

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

- $VERIFY_GROUPS
- $VERIFY_ROOTS
- $GENERATED_TARGET_LIST
- $EXEC_REPORT

## 5. Interpretation

This run generated verify-target support artifacts only.

It does not mean:
- phase 1 verify complete
- phase 1 complete
- DB executed
- phase 2 started
EOF2

echo "============================================================"
echo "FILEGEN_002 EXECUTION SUMMARY"
echo "============================================================"
echo "created_count=$created_count"
echo "skipped_count=$skipped_count"
echo "report=$EXEC_REPORT"
