# ============================================================
# CIVILIZATION SERVICE MATCH RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service match record model.

model_type:
- allocation coordination model

primary_key:
- service_match_record_id

natural_key:
- match_scope
- match_ref
- source_request_id

fields:
- service_match_record_id
- match_scope
- match_ref
- source_request_id
- match_status
- matched_capacity_ref
- source_state_version
- correlation_id
- matched_at
- created_at
- updated_at

match_status_enum:
- proposed
- confirmed
- delivered
- failed
- cancelled
- superseded

truth_boundary:
Service match truth belongs to CivilizationOS allocation coordination domain.
