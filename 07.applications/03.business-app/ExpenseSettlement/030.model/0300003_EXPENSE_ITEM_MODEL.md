# ============================================================
# EXPENSE ITEM MODEL
# ============================================================

status: canonical
layer: model
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

entity: expense_item

fields:
- expense_item_id
- expense_report_id
- expense_category_code
- usage_date
- merchant_name
- amount
- tax_mode
- payment_method
- project_code
- note
- evidence_required
- duplicate_check_state
- created_at
- updated_at
