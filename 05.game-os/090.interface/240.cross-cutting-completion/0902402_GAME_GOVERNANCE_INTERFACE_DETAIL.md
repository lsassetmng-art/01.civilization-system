# ============================================================
# GAME GOVERNANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for approval, ownership boundary,
compatibility, and audit governance in GameOS.

required_fields:
- trail_ref or boundary_ref or bundle_ref
- authority_basis where applicable
- source_version_code where applicable
- correlation_id

compatibility_rule:
Game governance interfaces must remain authority-aware and compatibility-aware.
