# ============================================================
# STREAMING PERSONA PERFORMER BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical StreamingOS performer-assignment reference model
for persona-linked participation.

model_type:
- performer assignment reference model

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
- performer_civilization_id
- persona_id
- snapshot_id
- applied_snapshot_id
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
Streaming performer assignment bindings must expose explicit version semantics.

truth_boundary:
- StreamingOS owns performer-assignment and participation-safety truth
- PersonaOS owns persona internal mutable truth

forbidden:
- treating performer binding as persona internal truth model
- storing persona mutable internal state in this model
