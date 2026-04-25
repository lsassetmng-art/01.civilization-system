# ============================================================
# CRIMINAL PROCEDURE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: law.criminal_procedure
document_id: 1201390001

owner: Boss
prepared_by: Zero

core_records:
- criminal_case
- criminal_charge
- prosecution_review
- evidence_chain_item
- hearing_link
- sentence_link
- execution_state
- parole_review
- supervision_state

canonical_states:
- REPORTED
- CASE_OPENED
- UNDER_REVIEW
- CHARGE_DRAFTED
- CHARGE_ACCEPTED
- HEARING_LINKED
- SENTENCE_RECORDED
- EXECUTING
- PAROLE_REVIEW
- RELEASED
- SUPERVISION
- CLOSED
- NO_CHARGE

required_inputs:
- report source
- accused actor or entity
- jurisdiction
- evidence chain anchor
- responsible authority scope

required_outputs:
- case record
- charge decision
- hearing linkage
- sentence linkage
- execution record
- release / supervision result

required_events:
- criminal_case_opened
- criminal_review_started
- criminal_charge_accepted
- criminal_hearing_linked
- criminal_sentence_recorded
- criminal_execution_started
- criminal_release_recorded
- criminal_case_closed

hard_rules:
- no charge without case
- no sentence without charge/hearing route
- no execution without sentence linkage
- no release without valid execution state
- no irreversible step with broken evidence chain

error_codes:
- CRIMINAL_CASE_INVALID
- CRIMINAL_AUTHORITY_INVALID
- CRIMINAL_EVIDENCE_CHAIN_BROKEN
- CRIMINAL_STATE_INVALID
- CRIMINAL_EXECUTION_INVALID

storage_boundary:
- keep evidence objects external if large
- store evidence chain metadata internally
- execution state must be append-audit friendly

## Exact Criminal Truth Boundary
## Exact Criminal Truth Boundary

Criminal procedure must explicitly distinguish:

- accusation
- charge
- evidence
- decision
- conviction posture
- enforcement posture
- custody or restriction linkage

## Exact Enforcement Binding

A criminal decision may produce enforcement binding.
Enforcement runtime effect must remain linkable
without replacing criminal decision truth itself.

Runtime restriction may depend on enforcement binding,
but runtime restriction is not the same truth as criminal judgment.
