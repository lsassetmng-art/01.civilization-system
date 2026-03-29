# ============================================================
# GAME DISTRIBUTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game distribution lifecycle handling.

required_fields:
- title_code or listing_code or release_code or build_code or package_code or manifest_code
- developer_scope where applicable
- compatibility_profile_code where applicable
- source_state_version where applicable
- correlation_id

success_condition:
- game distribution request classified and routed safely

failure_condition:
- invalid target
- missing developer, package, or compatibility basis
- incompatible distribution handling
