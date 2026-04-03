# ============================================================
# CIVILIZATION PLANNING REVISION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical planning revision record model.

model_type:
- planning revision truth model

primary_key:
- planning_revision_record_id

natural_key:
- revision_scope
- revision_ref
- source_plan_code

fields:
- planning_revision_record_id
- revision_scope
- revision_ref
- source_plan_code
- revision_status
- revision_summary
- source_state_version
- correlation_id
- revised_at
- created_at
- updated_at

revision_status_enum:
- proposed
- approved
- applied
- rejected
- archived

truth_boundary:
Planning-revision truth belongs to CivilizationOS planning-simulation domain.
