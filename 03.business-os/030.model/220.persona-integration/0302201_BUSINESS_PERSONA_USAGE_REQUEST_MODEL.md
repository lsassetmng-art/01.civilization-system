# ============================================================
# BUSINESS PERSONA USAGE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business persona usage request model.

model_type:
- usage request truth model

primary_key:
- business_persona_usage_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- business_persona_usage_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- binding_code
- usage_summary
- source_state_version
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- approved
- active
- completed
- rejected
- archived

truth_boundary:
Business persona usage request truth belongs to BusinessOS persona-integration domain.
