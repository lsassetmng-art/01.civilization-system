# ============================================================
# CIVILIZATION METRIC LINEAGE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical metric lineage record model.

model_type:
- lineage trace model

primary_key:
- metric_lineage_record_id

natural_key:
- metric_scope
- metric_code
- source_state_version

fields:
- metric_lineage_record_id
- metric_scope
- metric_code
- aggregate_target_id
- source_lineage
- source_state_version
- lineage_status
- built_at
- created_at

lineage_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
Metric lineage records describe derivation lineage only.
