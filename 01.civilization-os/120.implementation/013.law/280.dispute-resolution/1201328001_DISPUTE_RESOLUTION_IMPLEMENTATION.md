# ============================================================
# DISPUTE RESOLUTION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: law.dispute_resolution
document_id: 1201328001

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Defines implementation-level requirements for dispute resolution.

This document is intended to be implementation-ready enough to
derive data models, handlers, validation rules, and UI/API boundaries.


# ============================================================
# 2. CORE RECORDS
# ============================================================

Minimum implementation records:

1. dispute_case
2. dispute_party
3. dispute_claim
4. dispute_counterclaim
5. dispute_evidence_bundle
6. dispute_route
7. dispute_session
8. dispute_outcome
9. dispute_appeal
10. dispute_enforcement_link

Recommended primary identity:
- dispute_case_id
- dispute_outcome_id
- dispute_appeal_id

Recommended common fields:
- id
- world_id
- nation_id (nullable by scope)
- status
- authority_scope_id
- created_at
- updated_at
- created_by
- last_decision_at


# ============================================================
# 3. STATE MODEL
# ============================================================

Canonical dispute_case states:

- DRAFT
- SUBMITTED
- ACCEPTED
- ROUTED
- IN_MEDIATION
- IN_ARBITRATION
- IN_ADJUDICATION
- OUTCOME_RECORDED
- APPEAL_PENDING
- FINALIZED
- ENFORCEMENT_LINKED
- CLOSED
- REJECTED

State rules:

- DRAFT -> SUBMITTED
- SUBMITTED -> ACCEPTED | REJECTED
- ACCEPTED -> ROUTED
- ROUTED -> IN_MEDIATION | IN_ARBITRATION | IN_ADJUDICATION
- IN_* -> OUTCOME_RECORDED
- OUTCOME_RECORDED -> APPEAL_PENDING | FINALIZED
- APPEAL_PENDING -> FINALIZED | ROUTED
- FINALIZED -> ENFORCEMENT_LINKED | CLOSED
- ENFORCEMENT_LINKED -> CLOSED

Forbidden:
- REJECTED -> FINALIZED
- DRAFT -> OUTCOME_RECORDED
- CLOSED -> any non-audit state


# ============================================================
# 4. REQUIRED INPUTS
# ============================================================

Case creation minimum:
- dispute_type
- filing_party_id
- responding_party_id or target_entity_id
- filing_summary
- authority_scope_id
- route_candidate or route_policy_reference

Before route execution:
- accepted case
- jurisdiction confirmed
- minimum evidence or waiver
- route authority validated

Before finalization:
- outcome artifact present
- authority actor recorded
- appeal eligibility determined


# ============================================================
# 5. OUTPUTS
# ============================================================

Implementation outputs:

- dispute_case row
- route decision record
- evidence linkage record
- outcome artifact
- appeal decision record
- enforcement linkage record
- audit trail events


# ============================================================
# 6. EVENT CONTRACTS
# ============================================================

Recommended domain events:

- dispute_case_submitted
- dispute_case_accepted
- dispute_case_rejected
- dispute_route_selected
- dispute_session_opened
- dispute_outcome_recorded
- dispute_appeal_opened
- dispute_finalized
- dispute_enforcement_linked
- dispute_closed

Event minimum fields:
- event_id
- event_type
- event_version
- occurred_at
- actor_id
- dispute_case_id
- world_id


# ============================================================
# 7. AUTHORITY RULES
# ============================================================

Required authority checks:

- filing authority
- acceptance authority
- route assignment authority
- outcome authority
- appeal review authority
- enforcement handoff authority

Fail closed when:
- authority scope missing
- conflicting authority claims exist
- actor compatibility unresolved


# ============================================================
# 8. VALIDATION RULES
# ============================================================

Hard validation:
- dispute_case_id unique
- filing party required
- target or respondent required
- route must be one supported route
- outcome cannot be stored before route execution
- appeal cannot open before outcome exists

Soft validation:
- evidence sufficiency score
- settlement completeness
- hearing note completeness


# ============================================================
# 9. ERROR / FAILURE RULES
# ============================================================

Recommended codes:

- DISPUTE_AUTHORITY_INVALID
- DISPUTE_ROUTE_INVALID
- DISPUTE_EVIDENCE_MISSING
- DISPUTE_STATE_INVALID
- DISPUTE_APPEAL_NOT_ALLOWED
- DISPUTE_OUTCOME_MISSING
- DISPUTE_ENFORCEMENT_LINK_INVALID

Failure policy:
- fail closed on finalization ambiguity
- preserve audit trace on all failures
- no destructive overwrite of evidence linkage


# ============================================================
# 10. STORAGE BOUNDARY
# ============================================================

Dispute domain stores:
- case data
- evidence linkage metadata
- route progression
- outcome metadata
- appeal metadata
- enforcement linkage metadata

Large evidence binary/object content should remain in
object storage or evidence subsystem, referenced by ID only.


# ============================================================
# 11. API / UI BOUNDARY
# ============================================================

API surface should minimally support:
- create case
- accept/reject case
- assign route
- record outcome
- open appeal
- finalize case
- link enforcement
- read case timeline

UI surface should minimally support:
- filing screen
- evidence attach screen
- route progress screen
- outcome screen
- appeal screen
- final status screen


# ============================================================
# 12. IDEMPOTENCY
# ============================================================

The following actions must be idempotent by request key or event id:
- submit case
- accept case
- record outcome
- finalize case
- link enforcement


# ============================================================
# 13. IMPLEMENTATION RESULT
# ============================================================

This domain is implementation-ready at structural level and
can be translated into DB schema, service handlers, and UI/API contracts.
