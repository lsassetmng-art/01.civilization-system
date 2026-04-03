# ============================================================
# CIVILIZATION VISITOR ENTRY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visitor entry record model.

model_type:
- movement registry model

primary_key:
- visitor_entry_record_id

natural_key:
- visitor_scope
- entry_ref
- correlation_id

fields:
- visitor_entry_record_id
- visitor_scope
- entry_ref
- entry_status
- entry_type
- origin_scope
- target_scope
- source_state_version
- correlation_id
- entered_at
- created_at
- updated_at

entry_status_enum:
- pending
- approved
- entered
- denied
- exited
- archived

truth_boundary:
Visitor entry truth belongs to CivilizationOS movement registry domain.
