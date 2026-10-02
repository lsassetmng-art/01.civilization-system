# AIWorkerOS Helpdesk Unified Retrieval View Apply-Readiness Review

## 1. Decision

APPLY_READINESS_DECISION=READY_FOR_USER_GO_REVIEW

This review did not apply DDL.

## 2. Input

DRAFT_RUN_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_204813_aiworker_helpdesk_unified_retrieval_view_draft_no_apply
DDL_DRAFT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_204813_aiworker_helpdesk_unified_retrieval_view_draft_no_apply/010_AIW_HELPDESK_UNIFIED_RETRIEVAL_DOCUMENT_VIEW_DRAFT_NOT_EXECUTED.sql
DESIGN_DOC=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_204813_aiworker_helpdesk_unified_retrieval_view_draft_no_apply/020_AIW_HELPDESK_UNIFIED_RETRIEVAL_DOCUMENT_VIEW_DESIGN.md
SEARCH_POLICY_DOC=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_204813_aiworker_helpdesk_unified_retrieval_view_draft_no_apply/030_AIW_HELPDESK_RETRIEVAL_SEARCH_RANKING_POLICY.md

## 3. Static DDL result

DDL_STATIC_CHECK_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/040_ddl_static_check.tsv

Important counters:

- CREATE_VIEW_COUNT=1
- COMMENT_VIEW_COUNT=1
- UNION_COUNT=7
- DROP_COUNT=0
- TRUNCATE_COUNT=0
- DELETE_COUNT=0
- INSERT_COUNT=0
- UPDATE_COUNT=0
- ALTER_COUNT=0
- CREATE_TABLE_COUNT=0
- CREATE_FUNCTION_COUNT=0
- CREATE_TRIGGER_COUNT=0
- CREATE_INDEX_COUNT=0
- API_TERM_COUNT=0

## 4. DB read-only result

- SOURCE_TABLE_CHECK_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/041_source_table_check.tsv
- REQUIRED_COLUMN_CHECK_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/042_required_column_check.tsv
- VIEW_EXISTENCE_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/043_view_existence_check.tsv
- SOURCE_ROW_COUNT_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/044_source_row_count_check.tsv
- DOCUMENT_KIND_CHECK_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_205155_aiworker_helpdesk_unified_retrieval_view_apply_readiness_review/045_document_kind_static_check.tsv

Important counters:

- MISSING_TABLE_COUNT=0
- MISSING_COLUMN_COUNT=0
- EXISTING_VIEW_STATUS=MISSING
- SOURCE_TOTAL_COUNT=56
- MISSING_KIND_COUNT=0

## 5. Architecture confirmation

Confirmed direction:

- Helpdesk knowledge is AIWorkerOS brain data.
- Unified retrieval view is a read model.
- API remains later transport.
- Portal remains entry/router.
- CommonOS remains UI component provider.
- CX22073JW remains reference/background only.
- Guardrail Knowledge DB remains dangerous-operation decision authority.

## 6. Apply warning rule

If EXISTING_VIEW_STATUS=EXISTS, future apply will replace the existing view definition.

If SECRET_SCAN_COUNT is nonzero, inspect SECRET_SCAN_OUT before apply.

## 7. Next action

If APPLY_READINESS_DECISION is READY_FOR_USER_GO_REVIEW or READY_WITH_WARNINGS_REVIEW_REQUIRED:

- user may explicitly approve DDL apply
- apply must be one transaction
- after apply, run select smoke on aiworker.v_helpdesk_retrieval_document
