# ============================================================
# GAME PURCHASE ENTITLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game purchase entitlement model.

model_type:
- entitlement truth model

primary_key:
- game_purchase_entitlement_id

natural_key:
- entitlement_scope
- entitlement_code
- entitlement_version

fields:
- game_purchase_entitlement_id
- entitlement_scope
- entitlement_code
- entitlement_version
- entitlement_status
- player_code
- entitlement_summary
- effective_from
- effective_until
- created_at
- updated_at

entitlement_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Game purchase entitlements must expose explicit version semantics.

truth_boundary:
Game purchase entitlement truth belongs to GameOS battle-security-economy domain.
