# ============================================================
# CIVILIZATION AUDIT ENFORCEMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit enforcement record model.

model_type:
- audit enforcement truth model

primary_key:
- audit_enforcement_record_id

natural_key:
- enforcement_scope
- enforcement_ref
- correlation_id

fields:
- audit_enforcement_record_id
- enforcement_scope
- enforcement_ref
- enforcement_status
- target_scope
- audit_basis
- action_summary
- source_state_version
- correlation_id
- acted_at
- created_at
- updated_at

enforcement_status_enum:
- initiated
- active
- fulfilled
- failed
- reversed
- archived

truth_boundary:
Audit-enforcement truth belongs to CivilizationOS security-enforcement domain.
