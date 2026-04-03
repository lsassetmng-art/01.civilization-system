# ============================================================
# CIVILIZATION REMOVAL EXECUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical removal execution model.

model_type:
- migration enforcement truth model

primary_key:
- removal_execution_id

natural_key:
- execution_scope
- execution_ref
- source_order_ref

fields:
- removal_execution_id
- execution_scope
- execution_ref
- source_order_ref
- execution_status
- subject_scope
- host_scope
- source_state_version
- executed_at
- created_at
- updated_at

execution_status_enum:
- pending
- active
- completed
- failed
- stayed
- reversed
- archived

idempotency_rule:
execution_scope + execution_ref must suppress duplicate effective removal execution.

truth_boundary:
Removal-execution truth belongs to CivilizationOS migration-nationality domain.
