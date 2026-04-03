# ============================================================
# CIVILIZATION REPAYMENT SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical repayment schedule model.

model_type:
- finance schedule model

primary_key:
- repayment_schedule_id

natural_key:
- loan_contract_id
- schedule_ref

fields:
- repayment_schedule_id
- loan_contract_id
- schedule_ref
- schedule_status
- installment_count
- next_due_at
- remaining_principal_value
- source_state_version
- created_at
- updated_at

schedule_status_enum:
- active
- due
- overdue
- completed
- defaulted
- archived

truth_boundary:
Repayment schedule truth belongs to CivilizationOS finance-credit domain.
