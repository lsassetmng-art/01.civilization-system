# ============================================================
# STREAMING REVENUE SETTLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming revenue settlement model.

model_type:
- settlement truth model

primary_key:
- streaming_revenue_settlement_id

natural_key:
- settlement_scope
- settlement_ref
- correlation_id

fields:
- streaming_revenue_settlement_id
- settlement_scope
- settlement_ref
- correlation_id
- settlement_status
- target_scope
- settlement_summary
- source_state_version
- settled_at
- created_at
- updated_at

settlement_status_enum:
- pending
- settled
- failed
- reversed
- archived

idempotency_rule:
settlement_scope + settlement_ref must suppress duplicate effective settlement.

truth_boundary:
Streaming revenue settlement truth belongs to StreamingOS monetization-rights domain.
