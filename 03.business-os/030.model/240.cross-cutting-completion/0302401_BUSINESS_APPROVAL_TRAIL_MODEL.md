# ============================================================
# BUSINESS APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for BusinessOS.

model_type:
- approval lineage truth model

primary_key:
- business_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- business_approval_trail_id
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
Business approval trail truth belongs to BusinessOS cross-cutting-completion domain.
