# ============================================================
# GAME TEMPLATE ASSET INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for Game Builder template and asset system lifecycle handling.

required_fields:
- family_code or profile_code or asset_set_code or boundary_code
- runtime_profile_code where applicable
- ruleset_profile_code where applicable
- asset_family where applicable
- correlation_id

compatibility_rule:
Game template-asset interfaces must remain runtime-aware and asset-aware.
