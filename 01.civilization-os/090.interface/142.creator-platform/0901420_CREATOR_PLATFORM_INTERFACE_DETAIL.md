# ============================================================
# CREATOR PLATFORM INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for creator-platform lifecycle handling.

required_fields:
- workspace_code or request_ref or validation_ref or review_ref or decision_ref
- seller_code
- game_title_code
- release_code where applicable
- correlation_id

compatibility_rule:
Creator-platform interfaces must remain workspace-aware and release-aware.
