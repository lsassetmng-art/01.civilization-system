# ============================================================
# GAME ANTI CHEAT INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game anti-cheat incident model.

model_type:
- anti-cheat truth model

primary_key:
- game_anti_cheat_incident_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- game_anti_cheat_incident_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- player_code
- incident_summary
- source_state_version
- occurred_at
- created_at
- updated_at

incident_status_enum:
- recorded
- under_review
- actionable
- resolved
- archived

truth_boundary:
Game anti-cheat truth belongs to GameOS battle-security-economy domain.
