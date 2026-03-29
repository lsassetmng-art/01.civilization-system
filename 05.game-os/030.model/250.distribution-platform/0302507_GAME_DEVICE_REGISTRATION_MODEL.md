# ============================================================
# GAME DEVICE REGISTRATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game device registration model.

model_type:
- device registration truth model

primary_key:
- game_device_registration_id

natural_key:
- device_scope
- device_code
- registration_version

fields:
- game_device_registration_id
- device_scope
- device_code
- registration_version
- registration_status
- owner_scope
- device_summary
- attestation_summary
- created_at
- updated_at

registration_status_enum:
- draft
- registered
- suspended
- revoked
- archived

contract_version_rule:
Device registrations must expose explicit version semantics.

truth_boundary:
Device registration truth belongs to GameOS distribution-platform domain.
