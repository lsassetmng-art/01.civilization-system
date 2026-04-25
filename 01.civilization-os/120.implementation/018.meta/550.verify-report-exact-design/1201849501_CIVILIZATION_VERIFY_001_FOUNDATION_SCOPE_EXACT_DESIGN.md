# ============================================================
# CIVILIZATION VERIFY 001 FOUNDATION SCOPE EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 550.verify-report-exact-design
document_id: 1201849501
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact design for VERIFY_001_FOUNDATION_SCOPE.

## 2. Verify Objective

VERIFY_001 checks whether phase-1 work stayed inside the intended foundation scope.

It verifies:
- scope compliance
- blocker posture
- no silent widening
- helper/preparation-only posture consistency
- no forbidden execution class drift

## 3. Verify Input Family

VERIFY_001 must read only the following families:

- phase 1 scope and DB subset docs
- entry checklist / scope lock / go-no-go docs
- FILEGEN execution reports
- PATCH execution reports
- DBPREP preparation-only reports
- generated helper / candidate artifacts
- integrated status and prestatus docs

## 4. Exact Verify Questions

VERIFY_001 must explicitly answer:

1. Did any executed block exceed phase 1 scope?
2. Did any executed block perform SQL / DDL / seed / runtime mutation when prohibited?
3. Did DBPREP blocks remain preparation-only?
4. Did FILEGEN blocks remain helper-only?
5. Did PATCH blocks remain additive and non-destructive?
6. Is blocker count zero or non-zero?
7. Is phase 1 ready for REPORT_001 exact design closure input?

## 5. Verify Output Shape

VERIFY_001 output must include:

- verify_run_id
- verify_scope
- checked_block_list
- scope_compliance_result
- forbidden_execution_result
- blocker_count
- blocker_list
- overall_verify_result
- ready_for_report_flag
- verify_summary_text

## 6. Verify Result Values

Canonical overall_verify_result values:

- pass
- pass_with_attention
- fail

ready_for_report_flag values:
- yes
- no

## 7. Hard Rule

VERIFY_001 is judgment and reporting logic.
It must not mutate implementation targets.

## 8. Acceptance Checklist

- verify objective fixed
- verify input family fixed
- exact verify questions fixed
- verify output shape fixed
- non-mutation rule fixed
