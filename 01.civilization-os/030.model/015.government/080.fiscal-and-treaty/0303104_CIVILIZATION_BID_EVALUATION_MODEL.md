# ============================================================
# CIVILIZATION BID EVALUATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical bid evaluation model.

model_type:
- tender review truth model

primary_key:
- bid_evaluation_id

natural_key:
- evaluation_scope
- evaluation_ref
- source_notice_code

fields:
- bid_evaluation_id
- evaluation_scope
- evaluation_ref
- source_notice_code
- evaluation_status
- evaluator_scope
- evaluation_result
- source_state_version
- evaluated_at
- created_at
- updated_at

evaluation_status_enum:
- pending
- active
- completed
- superseded
- invalidated
- archived

truth_boundary:
Bid-evaluation truth belongs to CivilizationOS public-procurement domain.
