# ============================================================
# STREAMING PERFORMER PARTICIPATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming performer participation model.

model_type:
- participation truth model

primary_key:
- streaming_performer_participation_id

natural_key:
- participation_scope
- participation_ref
- correlation_id

fields:
- streaming_performer_participation_id
- participation_scope
- participation_ref
- correlation_id
- participation_status
- session_ref
- performer_scope
- participation_summary
- source_state_version
- participated_at
- created_at
- updated_at

participation_status_enum:
- proposed
- approved
- active
- withdrawn
- archived

truth_boundary:
Streaming performer participation truth belongs to StreamingOS participation-safety domain.
