# ============================================================
# BUSINESS PERSONA PROJECTION RECONCILIATION RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix reconciliation behavior between Business truth and Persona downstream projections.

reconciliation_rule:
- Persona apply-ready and mirror state is downstream only
- Business truth remains the source of correction when divergence exists
- downstream reconciliation may use authoritative snapshots, replay, or direct Business-truth refresh

minimum_reconciliation_targets:
- entitlement usability mirror
- apply-ready eligibility
- subscription-derived apply state
- persona-visible commercial availability state when applicable

reconciliation_trigger_examples:
- consumer lag
- duplicate delivery
- out-of-order delivery
- dead-letter recovery
- Business snapshot refresh

result:
- Projection reconciliation rule fixed as a canonical meta record.
