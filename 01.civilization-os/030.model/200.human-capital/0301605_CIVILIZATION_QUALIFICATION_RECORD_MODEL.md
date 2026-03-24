# ============================================================
# CIVILIZATION QUALIFICATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical qualification record model.

model_type:
- qualification truth model

primary_key:
- qualification_record_id

natural_key:
- qualification_scope
- qualification_ref

fields:
- qualification_record_id
- qualification_scope
- qualification_ref
- qualification_status
- holder_scope
- qualification_code
- qualification_level
- source_state_version
- issued_at
- expires_at
- created_at
- updated_at

qualification_status_enum:
- active
- suspended
- expired
- revoked
- archived

truth_boundary:
Qualification truth belongs to CivilizationOS human-capital domain.
