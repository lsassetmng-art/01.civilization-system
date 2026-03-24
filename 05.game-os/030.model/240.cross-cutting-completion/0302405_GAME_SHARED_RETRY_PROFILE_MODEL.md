# ============================================================
# GAME SHARED RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared retry profile model for GameOS.

model_type:
- retry governance truth model

primary_key:
- game_shared_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_shared_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game shared retry profiles must expose explicit version semantics.

truth_boundary:
Game shared retry profile truth belongs to GameOS cross-cutting-completion domain.
