# ============================================================
# CIVILIZATION PUBLIC BROADCAST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical public broadcast model.

model_type:
- public communication truth model

primary_key:
- public_broadcast_id

natural_key:
- broadcast_scope
- broadcast_code
- broadcast_version

fields:
- public_broadcast_id
- broadcast_scope
- broadcast_code
- broadcast_version
- broadcast_status
- broadcast_priority
- broadcast_payload
- payload_hash
- source_state_version
- published_at
- created_at
- updated_at

broadcast_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

broadcast_priority_enum:
- normal
- elevated
- urgent
- emergency

truth_boundary:
Public broadcast truth belongs to CivilizationOS public communication domain.
