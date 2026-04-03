# ============================================================
# CIVILIZATION NAME CHANGE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical name change record model.

model_type:
- identity change truth model

primary_key:
- name_change_record_id

natural_key:
- identity_scope
- change_ref

fields:
- name_change_record_id
- identity_scope
- change_ref
- change_status
- old_name_hash
- new_name_hash
- governing_basis
- source_state_version
- approved_at
- created_at
- updated_at

change_status_enum:
- requested
- approved
- applied
- rejected
- revoked
- archived

truth_boundary:
Name-change truth belongs to CivilizationOS civil-status domain.
