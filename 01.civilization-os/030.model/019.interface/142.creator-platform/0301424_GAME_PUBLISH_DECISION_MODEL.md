# ============================================================
# GAME PUBLISH DECISION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game publish decision model.

model_type:
- publish governance truth model

primary_key:
- game_publish_decision_id

natural_key:
- decision_scope
- decision_ref
- correlation_id

fields:
- game_publish_decision_id
- decision_scope
- decision_ref
- correlation_id
- decision_status
- game_title_code
- release_code
- decision_summary
- decided_at
- created_at
- updated_at

decision_status_enum:
- proposed
- approved
- rejected
- executed
- archived

truth_boundary:
Game publish decision truth belongs to Civilization creator-platform domain.
