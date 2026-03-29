# ============================================================
# GAME RELEASE VALIDATION ACCEPTANCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical release validation acceptance model in GameOS.

model_type:
- validation acceptance truth model

primary_key:
- game_release_validation_acceptance_id

natural_key:
- acceptance_scope
- release_code
- acceptance_version

fields:
- game_release_validation_acceptance_id
- acceptance_scope
- release_code
- acceptance_version
- acceptance_status
- validation_ref
- moderation_ref
- acceptance_summary
- created_at
- updated_at

acceptance_status_enum:
- pending
- accepted
- rejected
- superseded
- archived

contract_version_rule:
Game release validation acceptances must expose explicit version semantics.

truth_boundary:
Game release validation acceptance truth belongs to GameOS developer-platform domain.
