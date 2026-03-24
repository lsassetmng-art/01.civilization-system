# ============================================================
# BUSINESS APPROVAL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business approval record model.

model_type:
- approval truth model

primary_key:
- business_approval_record_id

natural_key:
- approval_scope
- approval_ref
- correlation_id

fields:
- business_approval_record_id
- approval_scope
- approval_ref
- correlation_id
- approval_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

approval_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Business approval truth belongs to BusinessOS business-core domain.
