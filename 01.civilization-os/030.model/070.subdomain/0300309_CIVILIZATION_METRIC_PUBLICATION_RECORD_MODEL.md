# ============================================================
# CIVILIZATION METRIC PUBLICATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical metric publication record model.

model_type:
- publication trace model

primary_key:
- metric_publication_record_id

natural_key:
- publication_scope
- publication_code
- source_state_version

fields:
- metric_publication_record_id
- publication_scope
- publication_code
- publication_status
- published_payload
- payload_hash
- source_lineage
- source_state_version
- published_at
- created_at
- updated_at

publication_status_enum:
- pending
- published
- superseded
- revoked
- failed

truth_boundary:
Metric publication records trace publication state, not source truth.
