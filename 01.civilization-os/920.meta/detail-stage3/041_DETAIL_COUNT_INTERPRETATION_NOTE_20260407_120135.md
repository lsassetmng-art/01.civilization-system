# ============================================================
# 040 DETAIL COUNT INTERPRETATION NOTE
# ============================================================

status: canonical-review
prepared_by: Zero
owner: Boss
target_domain: 040.detail

purpose:
Defines the formal count interpretation rule for 040.detail.

summary:
040.detail is not a standard 9/8-count domain.
It is an extended detail domain that contains
both canonical detail-core documents and
detail-support extension documents.

formal_interpretation:
- direct file overcount is not an error by itself
- 040.detail must be reviewed with two sets:
  - detail canonical core set
  - detail support extension set
- count review must not apply the 004/005/006/012 rule directly

detail_canonical_core_set:
- domain index
- domain overview
- layer core
- entity detail
- location detail
- activity detail
- relationship detail
- status detail
- timeline detail

detail_support_extension_set_examples:
- cross-domain sync
- sync consume
- sync dispatch
- retry
- dead-letter
- compatibility
- approval
- audit
- replay
- truth boundary
- idempotency
- access control
- observability
- implementation mapping
- storage mapping
- design standard
- review checklist

layer_interpretation:
- 020.architecture: expanded architecture set
- 040.runtime: core runtime + runtime summary
- 050.flow: core detail flow + synchronization/replay support flows
- 060.integration: core integration + integration summary
- 070.operations: core operations + replay/retry/audit support operations
- 080.policy: core policy + synchronization/audit/replay support policies
- 100.security: core security + detail-specific security supplements
- 110.infrastructure: core infrastructure + substrate/observability supplements
- 120.implementation: core implementation + mapping supplements
- 130.development: core development + design/review supplements

review_rule:
- evaluate structural completeness separately from density
- density review must cover both core and support body files
- index / overview may remain lighter than canonical body files

result:
040.detail uses an extended-count interpretation.
