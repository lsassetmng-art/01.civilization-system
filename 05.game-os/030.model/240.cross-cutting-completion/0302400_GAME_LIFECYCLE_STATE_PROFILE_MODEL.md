# ============================================================
# GAME LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for GameOS.

model_type:
- lifecycle governance truth model

primary_key:
- game_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Game lifecycle state profile truth belongs to GameOS cross-cutting-completion domain.
