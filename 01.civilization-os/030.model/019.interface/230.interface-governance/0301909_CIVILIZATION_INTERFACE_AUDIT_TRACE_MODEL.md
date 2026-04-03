# ============================================================
# CIVILIZATION INTERFACE AUDIT TRACE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical interface audit trace model.

model_type:
- boundary audit truth model

primary_key:
- interface_audit_trace_id

natural_key:
- trace_scope
- trace_ref
- correlation_id

fields:
- interface_audit_trace_id
- trace_scope
- trace_ref
- trace_status
- actor_scope
- target_interface_code
- source_state_version
- correlation_id
- traced_at
- created_at
- updated_at

trace_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Interface-audit truth belongs to CivilizationOS interface-governance domain.
