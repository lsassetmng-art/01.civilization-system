# ============================================================
# CIVILIZATION TAX COLLECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical tax collection record model.

model_type:
- fiscal collection truth model

primary_key:
- tax_collection_record_id

natural_key:
- collection_ref
- assessment_ref

fields:
- tax_collection_record_id
- collection_ref
- assessment_ref
- collection_status
- collected_amount
- source_state_version
- correlation_id
- collected_at
- created_at
- updated_at

collection_status_enum:
- pending
- collected
- partial
- failed
- reversed
- cancelled

idempotency_rule:
collection_ref + assessment_ref must suppress duplicate effective collection.

truth_boundary:
Tax collection truth belongs to CivilizationOS fiscal domain.
