# ============================================================
# CIVILIZATION METRIC OBSERVATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical metric observation model.

model_type:
- measurement truth model

primary_key:
- metric_observation_id

natural_key:
- observation_scope
- observation_ref
- observation_window

fields:
- metric_observation_id
- observation_scope
- observation_ref
- observation_window
- observation_status
- kpi_code
- observed_value
- measurement_unit
- source_lineage
- source_state_version
- observed_at
- created_at
- updated_at

observation_status_enum:
- recorded
- revised
- invalidated
- archived

truth_boundary:
Metric-observation truth belongs to CivilizationOS observability-control domain.
