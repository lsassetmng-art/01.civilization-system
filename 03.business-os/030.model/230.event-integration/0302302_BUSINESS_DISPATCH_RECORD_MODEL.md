# ============================================================
# BUSINESS DISPATCH RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business dispatch record model.

model_type:
- dispatch audit truth model

primary_key:
- business_dispatch_record_id

natural_key:
- dispatch_scope
- dispatch_ref
- correlation_id

fields:
- business_dispatch_record_id
- dispatch_scope
- dispatch_ref
- correlation_id
- dispatch_status
- event_ref
- dispatch_summary
- source_state_version
- dispatched_at
- created_at
- updated_at

dispatch_status_enum:
- attempted
- succeeded
- failed
- replayed
- archived

truth_boundary:
Business dispatch truth belongs to BusinessOS event-integration domain.
