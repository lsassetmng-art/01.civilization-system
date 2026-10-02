# AIWorkerOS Guardrail Knowledge DB GKD-1 Sato Review Memo

FINAL_STATUS=DRAFT_REVIEW_MEMO_CREATED
PHASE=GKD-1_NOT_EXECUTED_DDL_DRAFT
TARGET_OS=11.aiworker-os
TARGET_SCHEMA=aiworker
DB_CONNECTION=PERSONA_DATABASE_URL

GUARDS:
- DB_WRITE=NO
- DDL_APPLY=NO
- API_POST=NO
- CODE_PATCH=NO
- GIT_PUSH=NO

============================================================
1. Purpose
============================================================

This GKD-1 output is a NOT_EXECUTED DDL draft for review.

It does not apply DB changes.
It creates a SQL file for Sato DB review and Boss approval before GKD-2.

============================================================
2. Source evidence
============================================================

Prior completed phases:

- GKD-DESIGN: design file stored
- GKD-0: readonly inventory passed
- GKD-0R: inventory review passed
- GKD-0S: focused overlap extraction passed

Important GKD-0S facts:

- PROPOSED_EXISTS_COUNT=0
- Proposed guardrail object exact names do not currently exist.
- Focused overlap candidates still exist, so responsibility review is required.

============================================================
3. Proposed objects
============================================================

Tables:

- aiworker.guardrail_mistake_case
- aiworker.guardrail_failure_pattern
- aiworker.guardrail_response_runbook
- aiworker.guardrail_preflight_template
- aiworker.guardrail_rule
- aiworker.guardrail_scope_binding
- aiworker.guardrail_evidence_link
- aiworker.guardrail_runtime_check_result
- aiworker.guardrail_candidate_intake

Views:

- aiworker.vw_guardrail_active_rule
- aiworker.vw_guardrail_preflight_for_scope
- aiworker.vw_guardrail_recent_mistake_case
- aiworker.vw_guardrail_blocking_condition
- aiworker.vw_guardrail_evidence_summary

============================================================
4. Sato review points
============================================================

Review required:

1. Confirm gen_random_uuid() availability.
2. Confirm aiworker schema ownership and existing naming conventions.
3. Confirm no overlap with existing policy/safety/rule/check tables.
4. Confirm no overlap with existing audit/evidence/runtime tables.
5. Confirm whether guardrail_rule should be separate or reference an existing policy/rule table.
6. Confirm whether guardrail_evidence_link should be separate or reference an existing audit/evidence table.
7. Confirm whether guardrail_runtime_check_result should be separate or reference an existing runtime/check table.
8. Confirm RLS strategy before apply.
9. Confirm indexes are sufficient and not excessive.
10. Confirm no secrets, artifact bodies, or zip files are stored.
11. Confirm no AICM/CX/CommonOS responsibility is moved into AIWorkerOS incorrectly.
12. Confirm DB apply is separate GKD-2 only.

============================================================
5. Decision notes
============================================================

Likely additive:

- guardrail_mistake_case
- guardrail_response_runbook
- guardrail_preflight_template
- guardrail_scope_binding
- guardrail_candidate_intake

Caution / review carefully:

- guardrail_failure_pattern
- guardrail_rule
- guardrail_evidence_link
- guardrail_runtime_check_result

Reason:
Existing policy/safety/audit/evidence/runtime/rule/check structures may partially overlap.

============================================================
6. Apply condition
============================================================

GKD-2 DB apply requires:

- Sato DB review complete
- Boss explicit GO
- Transaction apply
- Rollback on failure
- Read-only smoke after apply
- No git push unless explicitly requested

============================================================
7. Non-goals
============================================================

This DDL does not:

- Seed initial data
- Add API routes
- Patch AIWorkerOS runtime
- Patch AICM UI
- Modify CX22073JW
- Modify CommonOS
- Apply RLS policies
- Store artifact bodies
- Store zip files
- Store secrets
