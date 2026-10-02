# Helper false positive classification

## Input

PREV_REPORT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/knowledge-domain-brain/900.meta/20260519_134822_kdb_helpdesk_query_helper_boundary_decision_no_patch_no_db/000_KDB_HELPDESK_QUERY_HELPER_BOUNDARY_DECISION_NO_PATCH_NO_DB_REPORT.md

## Classification

The selected candidate was:

- /lib/knowledge-domain-brain/domain-classifier.mjs
- selected export: KDB_ARCHITECTURE_MEDIA_DOMAIN_HINTS

This is not a DB query helper.

The prior query-like export detection matched the substring "KDB" as "db".
Therefore, this candidate is a false positive for DB helper selection.

## Decision

HELPER_FALSE_POSITIVE=YES
USE_DOMAIN_CLASSIFIER_AS_DB_HELPER=NO
USE_GUARDRAIL_HELPER_AS_HELPDESK_DB_HELPER=NO
USE_RUNTIME_QUERY_DEPENDENCY_CONTRACT=YES

## Boundary

- Helpdesk provider must not own DB connection.
- Helpdesk provider may consume query dependency injected by runtime.
- DB-backed test remains deferred until a stable shared runtime DB query dependency is explicitly identified.
