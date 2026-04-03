# ============================================================
# CIVILIZATION BIRTH RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical birth record model.

model_type:
- vital record truth model

primary_key:
- birth_record_id

natural_key:
- birth_scope
- birth_ref

fields:
- birth_record_id
- birth_scope
- birth_ref
- birth_status
- newborn_identity_scope
- parent_scope_summary
- source_state_version
- correlation_id
- born_at
- created_at
- updated_at

birth_status_enum:
- registered
- revised
- invalidated
- archived

truth_boundary:
Birth record truth belongs to CivilizationOS civil-status domain.
