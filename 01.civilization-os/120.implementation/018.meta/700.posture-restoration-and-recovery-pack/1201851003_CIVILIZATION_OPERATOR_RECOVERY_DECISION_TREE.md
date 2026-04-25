# ============================================================
# CIVILIZATION OPERATOR RECOVERY DECISION TREE
# ============================================================

status: recovery-tree
layer: implementation
domain: 018.meta
subdomain: 700.posture-restoration-and-recovery-pack
document_id: 1201851003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the decision tree for operator recovery after drift or wrong start.

## 2. Recovery Decision Tree

tree_case_01:
- condition: no drift detected
- action: remain in steady-state read-only mode

tree_case_02:
- condition: wrong starting document used
- action: restart from restoration reading order

tree_case_03:
- condition: semantic posture confusion detected
- action: restore baseline, then classify intended action again

tree_case_04:
- condition: non-semantic link or navigation issue detected
- action: use maintenance / errata path only

tree_case_05:
- condition: actual semantic change is intended after restoration
- action: use governed change initiation path

## 3. Recovery Tree Rule

Recovery happens before new change discussion.

## 4. Hard Rule

Do not convert recovery directly into posture change without re-entering governance.

## 5. Acceptance Checklist

- recovery decision tree fixed
- recovery-before-change rule fixed
- no-recovery-equals-change rule fixed
