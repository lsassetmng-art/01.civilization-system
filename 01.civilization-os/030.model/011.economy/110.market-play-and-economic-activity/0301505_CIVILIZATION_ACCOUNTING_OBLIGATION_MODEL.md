# ============================================================
# CIVILIZATION ACCOUNTING OBLIGATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical accounting obligation model.

model_type:
- accounting obligation model

primary_key:
- accounting_obligation_id

natural_key:
- obligation_scope
- obligation_ref

fields:
- accounting_obligation_id
- obligation_scope
- obligation_ref
- obligation_status
- obligation_type
- obligated_scope
- due_at
- source_state_version
- created_at
- updated_at

obligation_status_enum:
- active
- due
- overdue
- settled
- defaulted
- archived

truth_boundary:
Accounting obligation truth belongs to CivilizationOS organization-economy domain.
