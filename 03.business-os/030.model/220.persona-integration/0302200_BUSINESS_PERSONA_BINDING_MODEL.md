# ============================================================
# BUSINESS PERSONA BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business persona binding model.

model_type:
- integration binding truth model

primary_key:
- business_persona_binding_id

natural_key:
- binding_scope
- binding_code
- binding_version

fields:
- business_persona_binding_id
- binding_scope
- binding_code
- binding_version
- binding_status
- business_actor_scope
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
Business persona bindings must expose explicit version semantics.

truth_boundary:
Business persona binding truth belongs to BusinessOS persona-integration domain.
