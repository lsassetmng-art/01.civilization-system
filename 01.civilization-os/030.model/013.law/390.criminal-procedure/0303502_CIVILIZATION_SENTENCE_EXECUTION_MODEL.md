# ============================================================
# CIVILIZATION SENTENCE EXECUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sentence execution model.

model_type:
- criminal execution truth model

primary_key:
- sentence_execution_id

natural_key:
- execution_scope
- execution_ref
- source_sentence_ref

fields:
- sentence_execution_id
- execution_scope
- execution_ref
- source_sentence_ref
- execution_status
- subject_scope
- execution_summary
- source_state_version
- executed_at
- created_at
- updated_at

execution_status_enum:
- pending
- active
- completed
- stayed
- failed
- archived

idempotency_rule:
execution_scope + execution_ref must suppress duplicate effective sentence execution.

truth_boundary:
Sentence-execution truth belongs to CivilizationOS criminal-procedure domain.
