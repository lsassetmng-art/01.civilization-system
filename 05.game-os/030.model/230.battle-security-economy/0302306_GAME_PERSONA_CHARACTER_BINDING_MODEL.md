# ============================================================
# GAME PERSONA CHARACTER BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game persona character binding model.

model_type:
- persona binding truth model

primary_key:
- game_persona_character_binding_id

natural_key:
- binding_scope
- binding_code
- binding_version

fields:
- game_persona_character_binding_id
- binding_scope
- binding_code
- binding_version
- binding_status
- player_code
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
Game persona character bindings must expose explicit version semantics.

truth_boundary:
Game persona character binding truth belongs to GameOS battle-security-economy domain.
