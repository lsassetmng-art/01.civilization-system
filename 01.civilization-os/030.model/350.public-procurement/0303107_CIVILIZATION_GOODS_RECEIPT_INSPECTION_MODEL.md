# ============================================================
# CIVILIZATION GOODS RECEIPT INSPECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical goods receipt inspection model.

model_type:
- delivery acceptance truth model

primary_key:
- goods_receipt_inspection_id

natural_key:
- inspection_scope
- inspection_ref
- source_contract_code

fields:
- goods_receipt_inspection_id
- inspection_scope
- inspection_ref
- source_contract_code
- inspection_status
- inspected_quantity
- inspection_result
- source_state_version
- inspected_at
- created_at
- updated_at

inspection_status_enum:
- pending
- accepted
- conditionally_accepted
- rejected
- superseded
- archived

truth_boundary:
Goods-receipt inspection truth belongs to CivilizationOS public-procurement domain.
