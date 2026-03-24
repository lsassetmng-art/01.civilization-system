# ============================================================
# CIVILIZATION FORECAST RUN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical forecast run model.

model_type:
- predictive operations truth model

primary_key:
- forecast_run_id

natural_key:
- run_scope
- run_ref

fields:
- forecast_run_id
- run_scope
- run_ref
- run_status
- scenario_code
- baseline_ref
- output_summary
- source_lineage
- source_state_version
- executed_at
- created_at
- updated_at

run_status_enum:
- pending
- running
- completed
- failed
- invalidated
- archived

truth_boundary:
Forecast-run truth belongs to CivilizationOS planning-simulation domain.
