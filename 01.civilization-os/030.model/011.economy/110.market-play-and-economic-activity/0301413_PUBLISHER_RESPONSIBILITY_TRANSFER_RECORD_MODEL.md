# ============================================================
# PUBLISHER RESPONSIBILITY TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical publisher responsibility transfer record model.

model_type:
- responsibility transfer truth model

primary_key:
- publisher_responsibility_transfer_record_id

natural_key:
- responsibility_scope
- responsibility_ref
- correlation_id

fields:
- publisher_responsibility_transfer_record_id
- responsibility_scope
- responsibility_ref
- correlation_id
- responsibility_status
- source_seller_code
- target_seller_code
- responsibility_summary
- effective_from
- created_at
- updated_at

responsibility_status_enum:
- pending
- active
- reversed
- archived

truth_boundary:
Publisher responsibility transfer truth belongs to Civilization marketplace-transfer domain.
