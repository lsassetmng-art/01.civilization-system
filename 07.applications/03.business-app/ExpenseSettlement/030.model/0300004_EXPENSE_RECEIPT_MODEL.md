# ============================================================
# EXPENSE RECEIPT MODEL
# ============================================================

status: canonical
layer: model
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

entity: expense_receipt

fields:
- expense_receipt_id
- expense_item_id
- storage_object_ref
- file_name
- mime_type
- sha256
- capture_source
- evidence_state
- uploaded_at
- verified_at

rules:
- receipt evidence may exist before submit
- evidence substitution after approval requires explicit policy path
