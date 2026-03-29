# ============================================================
# GAME ENTITLEMENT CONTINUITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical entitlement continuity record model across approved title transfer.

model_type:
- continuity governance truth model

primary_key:
- game_entitlement_continuity_record_id

natural_key:
- continuity_scope
- game_title_code
- continuity_version

fields:
- game_entitlement_continuity_record_id
- continuity_scope
- game_title_code
- continuity_version
- continuity_status
- source_seller_code
- target_seller_code
- continuity_summary
- created_at
- updated_at

continuity_status_enum:
- active
- superseded
- archived

contract_version_rule:
Entitlement continuity records must expose explicit version semantics.

truth_boundary:
Entitlement continuity truth belongs to GameOS title-transfer domain.
