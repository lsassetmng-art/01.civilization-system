# ============================================================
# CIVILIZATION DEBT OBLIGATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical debt obligation model.

model_type:
- finance obligation model

primary_key:
- debt_obligation_id

natural_key:
- obligation_scope
- obligation_ref

fields:
- debt_obligation_id
- obligation_scope
- obligation_ref
- obligation_status
- principal_value
- currency_code
- debtor_scope
- creditor_scope
- due_at
- source_state_version
- created_at
- updated_at

obligation_status_enum:
- active
- due
- overdue
- restructured
- settled
- defaulted
- archived

truth_boundary:
Debt obligation truth belongs to CivilizationOS finance-credit domain.
