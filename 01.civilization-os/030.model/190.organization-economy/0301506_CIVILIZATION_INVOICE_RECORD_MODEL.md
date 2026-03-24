# ============================================================
# CIVILIZATION INVOICE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical invoice record model.

model_type:
- accounting document truth model

primary_key:
- invoice_record_id

natural_key:
- invoice_scope
- invoice_ref

fields:
- invoice_record_id
- invoice_scope
- invoice_ref
- invoice_status
- issuer_scope
- recipient_scope
- invoiced_value
- currency_code
- due_at
- source_state_version
- created_at
- updated_at

invoice_status_enum:
- draft
- issued
- accepted
- disputed
- settled
- cancelled
- archived

truth_boundary:
Invoice truth belongs to CivilizationOS organization-economy domain.
