# ============================================================
# BUSINESS METRIC RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business metric record model.

model_type:
- metric truth model

primary_key:
- business_metric_record_id

natural_key:
- metric_scope
- metric_ref
- metric_window

fields:
- business_metric_record_id
- metric_scope
- metric_ref
- metric_window
- metric_status
- metric_type
- metric_value
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

metric_status_enum:
- current
- revised
- invalidated
- archived

truth_boundary:
Business metric truth belongs to BusinessOS business-core domain.
