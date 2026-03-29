# ============================================================
# GAME DOWNLOAD GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game download grant model.

model_type:
- download authorization truth model

primary_key:
- game_download_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- game_download_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- title_code
- device_code
- entitlement_summary
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Download grants must expose explicit version semantics.

truth_boundary:
Download grant truth belongs to GameOS distribution-platform domain.
