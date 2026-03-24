# ============================================================
# CIVILIZATION USAGE CHANGE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical usage change record model.

model_type:
- urban usage transition truth model

primary_key:
- usage_change_record_id

natural_key:
- change_scope
- change_ref
- target_building_scope

fields:
- usage_change_record_id
- change_scope
- change_ref
- target_building_scope
- change_status
- old_use_summary
- new_use_summary
- approval_basis
- source_state_version
- changed_at
- created_at
- updated_at

change_status_enum:
- requested
- approved
- applied
- rejected
- reversed
- archived

truth_boundary:
Usage-change truth belongs to CivilizationOS urban-governance domain.
