# CX22073JW Priority 26-29 Apply Order Master
- project: CX22073JW
- document_type: apply-order-master
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the apply order for priority areas 26-29.

## 2. Apply Order
1. review delta DDL candidate
2. apply delta DDL
3. review base seed candidate
4. apply base seed
5. run verification SQL
6. record post-apply notes
7. decide whether to proceed to areas 30-33

## 3. Files
- `200_CX22073JW_PRIORITY_26_29_DELTA_DDL_CANDIDATE.sql`
- `210_CX22073JW_PRIORITY_26_29_BASE_SEED_CANDIDATE.sql`
- `220_CX22073JW_PRIORITY_26_29_VERIFICATION_SQL.sql`
- `240_CX22073JW_PRIORITY_26_29_EXECUTION_RUNBOOK.sql`
- `250_CX22073JW_PRIORITY_26_29_POST_APPLY_AUDIT_SQL.sql`
- `260_CX22073JW_PRIORITY_26_29_RELEASE_CHECKLIST.md`

## 4. Review Principle
SQL review should happen before apply.
Reviewer for SQL review:
- 佐藤（DB担当）

## 5. Apply Principle
This slice remains:
- additive only
- no rebuild of current normal layer
- no destructive cleanup in the same step

## 6. Conclusion
This file is the single apply-order reference for areas 26-29.
