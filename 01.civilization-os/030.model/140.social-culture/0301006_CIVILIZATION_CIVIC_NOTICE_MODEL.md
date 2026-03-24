# ============================================================
# CIVILIZATION CIVIC NOTICE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civic notice model.

model_type:
- public notice truth model

primary_key:
- civic_notice_id

natural_key:
- notice_scope
- notice_code
- notice_version

fields:
- civic_notice_id
- notice_scope
- notice_code
- notice_version
- notice_status
- notice_priority
- notice_payload
- payload_hash
- source_state_version
- published_at
- created_at
- updated_at

notice_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

notice_priority_enum:
- normal
- elevated
- urgent
- emergency

truth_boundary:
Civic notice truth belongs to CivilizationOS civic communication domain.
