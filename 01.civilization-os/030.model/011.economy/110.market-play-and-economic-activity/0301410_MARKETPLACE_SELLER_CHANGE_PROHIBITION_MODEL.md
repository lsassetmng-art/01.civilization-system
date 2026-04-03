# ============================================================
# MARKETPLACE SELLER CHANGE PROHIBITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical prohibition model for seller owner-class changes.

model_type:
- seller governance truth model

primary_key:
- marketplace_seller_change_prohibition_id

natural_key:
- prohibition_scope
- seller_code
- prohibition_version

fields:
- marketplace_seller_change_prohibition_id
- prohibition_scope
- seller_code
- prohibition_version
- prohibition_status
- seller_type
- prohibition_summary
- created_at
- updated_at

prohibition_status_enum:
- active
- superseded
- archived

truth_boundary:
Seller change prohibition truth belongs to Civilization marketplace-transfer domain.
