# ============================================================
# GAME INSTALL LICENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game install license model.

model_type:
- install license truth model

primary_key:
- game_install_license_id

natural_key:
- license_scope
- license_code
- license_version

fields:
- game_install_license_id
- license_scope
- license_code
- license_version
- license_status
- device_code
- package_code
- license_summary
- effective_from
- effective_until
- created_at
- updated_at

license_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Install licenses must expose explicit version semantics.

truth_boundary:
Install license truth belongs to GameOS distribution-platform domain.
