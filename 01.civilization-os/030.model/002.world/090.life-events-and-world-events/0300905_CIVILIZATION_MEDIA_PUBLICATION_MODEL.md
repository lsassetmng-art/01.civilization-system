# ============================================================
# CIVILIZATION MEDIA PUBLICATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical media publication model.

model_type:
- publication truth model

primary_key:
- media_publication_id

natural_key:
- publication_scope
- publication_code
- publication_version

fields:
- media_publication_id
- publication_scope
- publication_code
- publication_version
- publication_status
- publication_class
- publication_payload
- payload_hash
- source_state_version
- published_at
- created_at
- updated_at

publication_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

truth_boundary:
Media publication truth belongs to CivilizationOS information domain.
