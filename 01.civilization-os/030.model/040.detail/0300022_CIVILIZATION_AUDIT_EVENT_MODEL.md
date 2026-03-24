# ============================================================
# CIVILIZATION AUDIT EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit event model.

model_type:
- audit model

primary_key:
- audit_event_id

natural_key:
- audit_domain
- event_code
- correlation_id
- created_at

fields:
- audit_event_id
- audit_domain
- event_code
- event_category
- actor_identity
- executor_identity
- target_scope
- event_payload
- payload_hash
- source_state_version
- contract_version
- correlation_id
- causation_id
- severity
- created_at

severity_enum:
- info
- warning
- elevated
- critical

truth_boundary:
Audit events are append-oriented trace records.
They must not silently become domain truth records.
