# ============================================================
# STREAMING PERSONA PERFORMER BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming persona performer binding model.

model_type:
- persona binding truth model

primary_key:
- streaming_persona_performer_binding_id

natural_key:
- binding_scope
- binding_code
- binding_version

fields:
- streaming_persona_performer_binding_id
- binding_scope
- binding_code
- binding_version
- binding_status
- performer_scope
- persona_id
- binding_summary
- effective_from
- effective_until
- created_at
- updated_at

binding_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

contract_version_rule:
Streaming persona performer bindings must expose explicit version semantics.

truth_boundary:
Streaming persona performer binding truth belongs to StreamingOS participation-safety domain.
