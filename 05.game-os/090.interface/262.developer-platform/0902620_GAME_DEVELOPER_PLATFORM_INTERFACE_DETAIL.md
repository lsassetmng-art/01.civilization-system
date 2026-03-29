# ============================================================
# GAME DEVELOPER PLATFORM INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS developer-platform lifecycle handling.

required_fields:
- developer_code or workspace_code or profile_code or release_code or activation_ref
- seller_code
- validation_ref where applicable
- moderation_ref where applicable
- correlation_id

compatibility_rule:
Game developer-platform interfaces must remain workspace-aware and validation-aware.
