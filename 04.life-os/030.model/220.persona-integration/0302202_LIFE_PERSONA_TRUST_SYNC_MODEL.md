# ============================================================
# LIFE PERSONA TRUST SYNC MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life persona trust sync model.

model_type:
- trust sync truth model

primary_key:
- life_persona_trust_sync_id

natural_key:
- sync_scope
- sync_ref
- correlation_id

fields:
- life_persona_trust_sync_id
- sync_scope
- sync_ref
- correlation_id
- sync_status
- persona_id
- trust_summary
- source_contract_code
- source_state_version
- synced_at
- created_at
- updated_at

sync_status_enum:
- pending
- consumed
- failed
- dead_lettered
- archived

idempotency_rule:
sync_scope + sync_ref must suppress duplicate effective trust sync.

truth_boundary:
Life persona trust sync truth belongs to LifeOS persona-integration domain.
