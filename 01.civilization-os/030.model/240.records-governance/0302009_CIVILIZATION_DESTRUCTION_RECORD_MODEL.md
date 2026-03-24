# ============================================================
# CIVILIZATION DESTRUCTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical destruction record model.

model_type:
- terminal records truth model

primary_key:
- destruction_record_id

natural_key:
- destruction_scope
- destruction_ref
- source_archive_ref

fields:
- destruction_record_id
- destruction_scope
- destruction_ref
- destruction_status
- source_archive_ref
- destruction_basis
- source_state_version
- destroyed_at
- created_at
- updated_at

destruction_status_enum:
- approved
- executed
- cancelled
- invalidated
- archived

truth_boundary:
Destruction-record truth belongs to CivilizationOS records-governance domain.
