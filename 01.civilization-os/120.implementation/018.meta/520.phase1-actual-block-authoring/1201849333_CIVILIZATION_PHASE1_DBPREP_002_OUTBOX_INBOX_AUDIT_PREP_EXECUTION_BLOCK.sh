#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation"
DIR470="$BASE/018.meta/470.cross-cutting-completion"
DIR495="$BASE/018.meta/495.execution-block-preparation"
DIR520="$BASE/018.meta/520.phase1-actual-block-authoring"

ENV_NOTE="$DIR495/1201849334_CIVILIZATION_PHASE1_DBPREP_002_ENVIRONMENT_DECLARATION_NOTE.md"
CANDIDATES_MD="$DIR520/1201849335_CIVILIZATION_PHASE1_DBPREP_002_OUTBOX_INBOX_AUDIT_PREP_CANDIDATES.md"
PREP_REPORT="$DIR470/1201849336_CIVILIZATION_PHASE1_DBPREP_002_PREPARATION_ONLY_REPORT.md"

F_ENTRY_CHECK="$DIR495/1201849013_CIVILIZATION_EXECUTION_PHASE_1_ENTRY_CHECKLIST.md"
F_SCOPE_LOCK="$DIR495/1201849014_CIVILIZATION_EXECUTION_PHASE_1_SCOPE_LOCK_RULE.md"
F_ENV_CHECK="$DIR495/1201849015_CIVILIZATION_EXECUTION_PHASE_1_ENVIRONMENT_DECLARATION_CHECKLIST.md"
F_GONOGO="$DIR495/1201849016_CIVILIZATION_EXECUTION_PHASE_1_GO_NO_GO_GATE.md"

F_ACTUAL_BLOCK="$DIR520/1201849330_CIVILIZATION_PHASE1_DBPREP_002_OUTBOX_INBOX_AUDIT_PREP_ACTUAL_BLOCK.md"
F_TARGET_MANIFEST="$DIR520/1201849331_CIVILIZATION_PHASE1_DBPREP_002_OUTBOX_INBOX_AUDIT_PREP_TARGET_MANIFEST.md"
F_OUTPUT_MANIFEST="$DIR520/1201849332_CIVILIZATION_PHASE1_DBPREP_002_OUTBOX_INBOX_AUDIT_PREP_OUTPUT_MANIFEST.md"

mkdir -p "$DIR470" "$DIR495" "$DIR520" "$HOME/.tmp"

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

if [ ! -e "$ENV_NOTE" ]; then
  cat > "$ENV_NOTE" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 DBPREP 002 ENVIRONMENT DECLARATION NOTE
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849334
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Declares the environment posture for DBPREP_002.

## 2. Environment Declaration

This run uses:
- no DB execution, preparation only

## 3. Boundary Rule

This note does not authorize:
- PERSONA_DATABASE_URL execution
- DATABASE_URL execution
- mixed-environment execution
- SQL apply

## 4. Interpretation

This is a preparation-only environment declaration note.
DOC
  echo "CREATED: $ENV_NOTE"
  created_count=$((created_count + 1))
else
  echo "SKIP: already exists -> $ENV_NOTE"
  skipped_count=$((skipped_count + 1))
fi

if [ ! -e "$CANDIDATES_MD" ]; then
  cat > "$CANDIDATES_MD" <<'DOC'
# ============================================================
# CIVILIZATION PHASE1 DBPREP 002 OUTBOX INBOX AUDIT PREP CANDIDATES
# ============================================================

status: generated-helper
layer: implementation
domain: 018.meta
subdomain: 520.phase1-actual-block-authoring
document_id: 1201849335
owner: Boss
prepared_by: Zero
language: English

## 1. Candidate Preparation Family

Preparation-only candidate subsets:

- outbox preparation candidates
- inbox preparation candidates
- audit preparation candidates
- verify-view preparation candidates

## 2. Scope Rule

These are planning/preparation candidates only.
They are not executed DB changes.
DOC
  echo "CREATED: $CANDIDATES_MD"
  created_count=$((created_count + 1))
else
  echo "SKIP: already exists -> $CANDIDATES_MD"
  skipped_count=$((skipped_count + 1))
fi

cat > "$PREP_REPORT" <<EOF2
# ============================================================
# CIVILIZATION PHASE1 DBPREP 002 PREPARATION ONLY REPORT
# ============================================================

status: executed-preparation-only
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201849336
owner: Boss
prepared_by: Zero
language: English

## 1. Execution Identity

block_code:
- CIVILIZATION_PHASE1_DBPREP_002_OUTBOX_INBOX_AUDIT_PREP

block_class:
- DBPREP

execution_kind:
- preparation-only
- no DB execution
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

- $ENV_NOTE
- $CANDIDATES_MD
- $PREP_REPORT

## 5. Interpretation

This run recorded preparation posture only.

It does not mean:
- DB connected
- SQL executed
- schema changed
- phase 1 complete
EOF2

echo "============================================================"
echo "DBPREP_002 PREPARATION-ONLY SUMMARY"
echo "============================================================"
echo "created_count=$created_count"
echo "skipped_count=$skipped_count"
echo "report=$PREP_REPORT"
