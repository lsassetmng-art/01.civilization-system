# ============================================================
# CIVILIZATION SERVICE OUTCOME RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service outcome record model.

model_type:
- service result truth model

primary_key:
- service_outcome_record_id

natural_key:
- outcome_scope
- outcome_ref
- source_request_id

fields:
- service_outcome_record_id
- outcome_scope
- outcome_ref
- source_request_id
- outcome_status
- outcome_summary
- source_state_version
- correlation_id
- resolved_at
- created_at
- updated_at

outcome_status_enum:
- fulfilled
- partially_fulfilled
- failed
- reversed
- closed
- archived

truth_boundary:
Service outcome truth belongs to CivilizationOS service-delivery domain.
