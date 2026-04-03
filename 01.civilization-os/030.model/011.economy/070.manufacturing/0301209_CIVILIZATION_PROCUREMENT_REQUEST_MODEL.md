# ============================================================
# CIVILIZATION PROCUREMENT REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical procurement request model.

model_type:
- procurement governance model

primary_key:
- procurement_request_id

natural_key:
- procurement_scope
- procurement_ref
- correlation_id

fields:
- procurement_request_id
- procurement_scope
- procurement_ref
- procurement_status
- requested_item_code
- requested_quantity
- approval_basis
- source_state_version
- correlation_id
- requested_at
- created_at
- updated_at

procurement_status_enum:
- submitted
- approved
- ordered
- fulfilled
- failed
- cancelled
- archived

truth_boundary:
Procurement request truth belongs to CivilizationOS supply governance domain.
