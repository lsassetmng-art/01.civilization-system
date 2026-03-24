# ============================================================
# STREAMING SPONSORSHIP ALLOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming sponsorship allocation model.

model_type:
- sponsorship truth model

primary_key:
- streaming_sponsorship_allocation_id

natural_key:
- allocation_scope
- allocation_ref
- correlation_id

fields:
- streaming_sponsorship_allocation_id
- allocation_scope
- allocation_ref
- correlation_id
- allocation_status
- target_scope
- allocation_summary
- source_state_version
- allocated_at
- created_at
- updated_at

allocation_status_enum:
- pending
- allocated
- failed
- reversed
- archived

idempotency_rule:
allocation_scope + allocation_ref must suppress duplicate effective sponsorship allocation.

truth_boundary:
Streaming sponsorship allocation truth belongs to StreamingOS monetization-rights domain.
