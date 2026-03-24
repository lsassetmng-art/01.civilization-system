# ============================================================
# CIVILIZATION ENFORCEMENT EXECUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical enforcement execution model.

model_type:
- execution truth model

primary_key:
- enforcement_execution_id

natural_key:
- execution_scope
- execution_ref
- source_award_code

fields:
- enforcement_execution_id
- execution_scope
- execution_ref
- source_award_code
- execution_status
- target_scope
- execution_summary
- source_state_version
- correlation_id
- executed_at
- created_at
- updated_at

execution_status_enum:
- pending
- active
- fulfilled
- failed
- stayed
- reversed
- archived

idempotency_rule:
execution_scope + execution_ref must suppress duplicate effective execution.

truth_boundary:
Enforcement-execution truth belongs to CivilizationOS dispute-resolution domain.
