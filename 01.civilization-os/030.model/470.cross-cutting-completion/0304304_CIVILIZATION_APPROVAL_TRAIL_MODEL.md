# ============================================================
# CIVILIZATION APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model.

model_type:
- approval lineage truth model

primary_key:
- approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- approval_trail_id
- trail_scope
- trail_ref
- correlation_id
- trail_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

trail_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Approval-trail truth belongs to CivilizationOS cross-cutting-completion domain.
