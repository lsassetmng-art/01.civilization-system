# ============================================================
# CIVILIZATION AID DISBURSEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical aid disbursement model.

model_type:
- external settlement truth model

primary_key:
- aid_disbursement_id

natural_key:
- disbursement_scope
- disbursement_ref
- source_program_code

fields:
- aid_disbursement_id
- disbursement_scope
- disbursement_ref
- source_program_code
- disbursement_status
- disbursed_value
- currency_code
- source_state_version
- disbursed_at
- created_at
- updated_at

disbursement_status_enum:
- pending
- approved
- disbursed
- failed
- reversed
- cancelled
- archived

idempotency_rule:
disbursement_scope + disbursement_ref must suppress duplicate effective aid disbursement.

truth_boundary:
Aid-disbursement truth belongs to CivilizationOS external-trade-aid domain.
