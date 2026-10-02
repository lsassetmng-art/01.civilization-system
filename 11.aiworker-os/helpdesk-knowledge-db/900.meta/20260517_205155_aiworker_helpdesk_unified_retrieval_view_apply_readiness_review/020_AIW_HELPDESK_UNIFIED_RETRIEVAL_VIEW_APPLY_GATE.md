# AIWorkerOS Helpdesk Unified Retrieval View Apply Gate

## Current gate

APPLY_READINESS_DECISION=READY_FOR_USER_GO_REVIEW

## Apply not performed

DDL_APPLY=NO
DB_WRITE=NO
API_POST=NO
PATCH=NO
GIT_PUSH=NO

## Apply prerequisites

Before apply:

1. User explicitly says GO for DDL apply.
2. DDL draft path is confirmed.
3. MISSING_TABLE_COUNT=0.
4. MISSING_COLUMN_COUNT=0.
5. MISSING_KIND_COUNT=0.
6. Static destructive/DML counters are all 0.
7. Existing view replacement risk is accepted.
8. Secret scan warning is checked.
9. Apply packet includes post-apply select smoke.
10. No API patch or git push is included.

## Candidate apply input

DDL_DRAFT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_204813_aiworker_helpdesk_unified_retrieval_view_draft_no_apply/010_AIW_HELPDESK_UNIFIED_RETRIEVAL_DOCUMENT_VIEW_DRAFT_NOT_EXECUTED.sql

## Future apply behavior

Future apply should:

- use PERSONA_DATABASE_URL
- use psql ON_ERROR_STOP
- wrap in transaction
- apply the DDL draft
- run select count by document_kind from aiworker.v_helpdesk_retrieval_document
- run sample retrieval by app_code
- write report
