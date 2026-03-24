# ============================================================
# CIVILIZATION ENTRY CLEARANCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical entry clearance model.

model_type:
- border entry permission truth model

primary_key:
- entry_clearance_id

natural_key:
- clearance_scope
- clearance_ref
- correlation_id

fields:
- entry_clearance_id
- clearance_scope
- clearance_ref
- correlation_id
- clearance_status
- applicant_scope
- host_scope
- clearance_summary
- source_state_version
- decided_at
- created_at
- updated_at

clearance_status_enum:
- submitted
- under_review
- approved
- rejected
- cancelled
- archived

truth_boundary:
Entry-clearance truth belongs to CivilizationOS migration-nationality domain.
