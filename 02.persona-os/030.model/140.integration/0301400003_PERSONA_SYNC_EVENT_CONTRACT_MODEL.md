# ============================================================
# PERSONA SYNC EVENT CONTRACT MODEL
# ============================================================

status: canonical
layer: model
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_sync_event_contract

purpose:
Defines the canonical outbound sync event contract
emitted from PersonaOS.

core_fields:
persona_sync_event_contract_id
event_type
payload_schema
contract_status
emitted_at
created_at
updated_at

event_type_examples:
PERSONA_RELEASE_ISSUED
PERSONA_RELEASE_REVOKED
PERSONA_LICENSE_CHANGED
PERSONA_ACCESS_GRANT_CHANGED
PERSONA_DISTRIBUTION_CHANGED

rules:
Sync event contracts must remain deterministic and mirrorable.
