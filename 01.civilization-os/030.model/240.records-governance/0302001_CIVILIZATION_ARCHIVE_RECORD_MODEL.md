# ============================================================
# CIVILIZATION ARCHIVE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical archive record model.

model_type:
- archival truth model

primary_key:
- archive_record_id

natural_key:
- archive_scope
- archive_ref
- source_record_code

fields:
- archive_record_id
- archive_scope
- archive_ref
- source_record_code
- archive_status
- archive_reason
- retention_schedule_code
- source_state_version
- archived_at
- created_at
- updated_at

archive_status_enum:
- staged
- archived
- restored
- expired
- destroyed
- archived_terminal

truth_boundary:
Archive truth belongs to CivilizationOS records-governance domain.
