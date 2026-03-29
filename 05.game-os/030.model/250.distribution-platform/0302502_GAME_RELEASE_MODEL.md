# ============================================================
# GAME RELEASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game release model.

model_type:
- release truth model

primary_key:
- game_release_id

natural_key:
- release_scope
- release_code
- release_version

fields:
- game_release_id
- release_scope
- release_code
- release_version
- release_status
- title_code
- compatibility_profile_code
- release_summary
- release_hash
- effective_from
- effective_until
- created_at
- updated_at

release_status_enum:
- draft
- approved
- published
- revoked
- archived

contract_version_rule:
Game releases must expose explicit version semantics.

truth_boundary:
Game release truth belongs to GameOS distribution-platform domain.
