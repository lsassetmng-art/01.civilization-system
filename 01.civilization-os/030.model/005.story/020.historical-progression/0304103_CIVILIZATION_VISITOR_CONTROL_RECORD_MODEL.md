# ============================================================
# CIVILIZATION VISITOR CONTROL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visitor control record model.

model_type:
- tourism control truth model

primary_key:
- visitor_control_record_id

natural_key:
- control_scope
- control_ref
- target_site_scope

fields:
- visitor_control_record_id
- control_scope
- control_ref
- target_site_scope
- control_status
- visitor_summary
- source_state_version
- recorded_at
- created_at
- updated_at

control_status_enum:
- current
- restricted
- suspended
- restored
- archived

truth_boundary:
Visitor-control truth belongs to CivilizationOS culture-tourism domain.
