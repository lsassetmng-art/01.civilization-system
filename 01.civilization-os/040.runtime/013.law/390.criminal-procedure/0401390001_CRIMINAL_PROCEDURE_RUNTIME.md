# ============================================================
# CRIMINAL PROCEDURE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: law.criminal_procedure
document_id: 0401390001

owner: Boss
prepared_by: Zero

runtime_state_machine:
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

runtime_rules:
- no charge path without evidence chain anchor
- no execution without sentence record
- no release without reviewable release basis
- all transitions must preserve criminal traceability

failure_behavior:
- fail closed on broken chain of custody
- fail closed on invalid authority route
- block sentence / execution under ambiguity
