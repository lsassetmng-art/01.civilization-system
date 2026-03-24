# ============================================================
# STREAMING APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for StreamingOS.

model_type:
- approval lineage truth model

primary_key:
- streaming_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- streaming_approval_trail_id
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
Streaming approval trail truth belongs to StreamingOS cross-cutting-completion domain.
