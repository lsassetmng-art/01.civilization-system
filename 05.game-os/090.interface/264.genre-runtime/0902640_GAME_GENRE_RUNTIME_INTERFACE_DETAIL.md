# ============================================================
# GAME GENRE RUNTIME INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS genre-runtime lifecycle handling.

required_fields:
- profile_code or package_code
- runtime_profile_code where applicable
- ruleset basis where applicable
- compatibility basis where applicable
- correlation_id

compatibility_rule:
Game genre-runtime interfaces must remain runtime-aware and package-aware.
