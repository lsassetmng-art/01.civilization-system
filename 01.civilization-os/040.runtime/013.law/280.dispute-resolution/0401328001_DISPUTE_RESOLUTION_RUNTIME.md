# ============================================================
# DISPUTE RESOLUTION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: law.dispute_resolution
document_id: 0401328001

owner: Boss
prepared_by: Zero

runtime_scope:
- case intake
- authority validation
- route progression
- outcome progression
- appeal progression
- finalization progression

runtime_state_machine:
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

runtime_rules:
- no final state without validated authority
- no appeal before recorded outcome
- no enforcement link before finalized outcome
- all transitions must emit audit-visible events

failure_behavior:
- fail closed on authority ambiguity
- fail closed on route mismatch
- preserve current state on partial failure
