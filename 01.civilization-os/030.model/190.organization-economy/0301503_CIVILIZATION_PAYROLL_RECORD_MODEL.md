# ============================================================
# CIVILIZATION PAYROLL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical payroll record model.

model_type:
- compensation truth model

primary_key:
- payroll_record_id

natural_key:
- payroll_scope
- payroll_ref

fields:
- payroll_record_id
- payroll_scope
- payroll_ref
- payroll_status
- worker_scope
- gross_value
- net_value
- currency_code
- source_state_version
- correlation_id
- paid_at
- created_at
- updated_at

payroll_status_enum:
- pending
- approved
- paid
- failed
- reversed
- cancelled
- archived

idempotency_rule:
payroll_scope + payroll_ref must suppress duplicate effective payroll posting.

truth_boundary:
Payroll truth belongs to CivilizationOS organization-economy domain.
