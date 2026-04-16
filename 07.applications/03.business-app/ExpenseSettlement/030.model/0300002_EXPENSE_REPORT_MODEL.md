# ============================================================
# EXPENSE REPORT MODEL
# ============================================================

status: canonical
layer: model
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

entity: expense_report

fields:
- expense_report_id
- company_id
- applicant_user_id
- title
- expense_month
- currency_code
- total_amount
- submit_state
- approval_state
- erp_state
- settled_at
- created_at
- updated_at

notes:
expense_report groups one or more expense_item records.
approval_state and erp_state must remain separate.
