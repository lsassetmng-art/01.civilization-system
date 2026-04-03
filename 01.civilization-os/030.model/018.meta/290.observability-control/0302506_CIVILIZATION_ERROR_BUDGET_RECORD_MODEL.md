# ============================================================
# CIVILIZATION ERROR BUDGET RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical error budget record model.

model_type:
- reliability accounting truth model

primary_key:
- error_budget_record_id

natural_key:
- budget_scope
- budget_ref
- budget_window

fields:
- error_budget_record_id
- budget_scope
- budget_ref
- budget_window
- budget_status
- service_scope
- total_budget_value
- remaining_budget_value
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

budget_status_enum:
- current
- constrained
- exhausted
- restored
- archived

truth_boundary:
Error-budget truth belongs to CivilizationOS observability-control domain.
