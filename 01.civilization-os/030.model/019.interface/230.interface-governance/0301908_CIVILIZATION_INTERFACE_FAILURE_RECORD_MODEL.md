# ============================================================
# CIVILIZATION INTERFACE FAILURE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical interface failure record model.

model_type:
- boundary failure truth model

primary_key:
- interface_failure_record_id

natural_key:
- failure_scope
- failure_ref
- correlation_id

fields:
- interface_failure_record_id
- failure_scope
- failure_ref
- failure_status
- failure_type
- target_interface_code
- source_state_version
- correlation_id
- occurred_at
- created_at
- updated_at

failure_status_enum:
- active
- acknowledged
- mitigated
- cleared
- archived

truth_boundary:
Interface-failure truth belongs to CivilizationOS interface-governance domain.
