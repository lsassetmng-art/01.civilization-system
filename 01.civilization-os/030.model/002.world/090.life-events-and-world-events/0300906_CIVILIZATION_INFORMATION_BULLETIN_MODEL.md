# ============================================================
# CIVILIZATION INFORMATION BULLETIN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical information bulletin model.

model_type:
- public information model

primary_key:
- information_bulletin_id

natural_key:
- bulletin_scope
- bulletin_code
- bulletin_version

fields:
- information_bulletin_id
- bulletin_scope
- bulletin_code
- bulletin_version
- bulletin_status
- bulletin_priority
- bulletin_payload
- payload_hash
- source_state_version
- published_at
- created_at
- updated_at

bulletin_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

bulletin_priority_enum:
- normal
- elevated
- urgent
- emergency

truth_boundary:
Information bulletin truth belongs to CivilizationOS civic information domain.
