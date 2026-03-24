# ============================================================
# CIVILIZATION TECH TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical technology transfer record model.

model_type:
- transfer truth model

primary_key:
- tech_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- tech_transfer_record_id
- transfer_scope
- transfer_ref
- transfer_status
- source_license_code
- transfer_summary
- source_state_version
- correlation_id
- transferred_at
- created_at
- updated_at

transfer_status_enum:
- pending
- approved
- transferred
- failed
- reversed
- cancelled
- archived

truth_boundary:
Technology-transfer truth belongs to CivilizationOS technology-governance domain.
