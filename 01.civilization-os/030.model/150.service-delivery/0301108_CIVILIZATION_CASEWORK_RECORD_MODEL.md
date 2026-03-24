# ============================================================
# CIVILIZATION CASEWORK RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical casework record model.

model_type:
- administrative handling model

primary_key:
- casework_record_id

natural_key:
- casework_scope
- casework_ref
- source_request_id

fields:
- casework_record_id
- casework_scope
- casework_ref
- source_request_id
- casework_status
- assigned_officer_scope
- handling_summary
- source_state_version
- correlation_id
- opened_at
- closed_at
- created_at
- updated_at

casework_status_enum:
- opened
- assigned
- in_progress
- resolved
- escalated
- archived

truth_boundary:
Casework truth belongs to CivilizationOS civic administration domain.
