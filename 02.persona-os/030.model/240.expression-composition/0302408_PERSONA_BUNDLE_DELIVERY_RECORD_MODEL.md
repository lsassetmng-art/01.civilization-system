# ============================================================
# PERSONA BUNDLE DELIVERY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona bundle delivery record model.

model_type:
- bundle delivery truth model

primary_key:
- persona_bundle_delivery_record_id

natural_key:
- delivery_scope
- delivery_ref
- correlation_id

fields:
- persona_bundle_delivery_record_id
- delivery_scope
- delivery_ref
- correlation_id
- delivery_status
- target_scope
- bundle_hash
- source_state_version
- delivered_at
- created_at
- updated_at

delivery_status_enum:
- pending
- delivered
- failed
- reversed
- archived

idempotency_rule:
delivery_scope + delivery_ref must suppress duplicate effective bundle delivery.

truth_boundary:
Bundle delivery truth belongs to PersonaOS expression-composition domain.
