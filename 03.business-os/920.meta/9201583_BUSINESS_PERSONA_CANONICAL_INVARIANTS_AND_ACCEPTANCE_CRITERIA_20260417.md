# ============================================================
# BUSINESS PERSONA CANONICAL INVARIANTS AND ACCEPTANCE CRITERIA
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the minimum invariants and acceptance criteria required before implementation can be treated as aligned to the design.

canonical_invariants:
- BusinessOS remains canonical owner for persona-related commercial truth
- PersonaOS remains mirror / derived / apply-ready downstream only
- Business-origin event identity is preserved across delivery, retry, dead-letter, and replay
- downstream projection converges to Business truth on conflict
- ERP-facing commercial origin remains BusinessOS

minimum_acceptance_criteria:
- duplicate delivery does not duplicate downstream rights
- retryable consumer failure remains replayable and auditable
- terminal failure moves to dead-letter / operator path without silent truth mutation
- replay preserves original event identity where business meaning is unchanged
- reconciliation converges downstream state to Business truth
- transport metrics are inspectable
- checkpoint state supports idempotent downstream handling

result:
- Canonical invariants and acceptance criteria fixed as a canonical meta record.
