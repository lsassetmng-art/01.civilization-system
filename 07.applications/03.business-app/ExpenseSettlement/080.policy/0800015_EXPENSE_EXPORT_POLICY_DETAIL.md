# ============================================================
# EXPENSE EXPORT POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines export policy detail for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- export is a support/output function, not business truth
- export must not redefine canonical data meaning
- export scope must follow authority and visibility rules
- multilingual labels may vary, but exported canonical identifiers must remain stable
- multi currency export must preserve amount/currency distinction
- export must be explainable for finance, audit, and downstream handoff use

export_design_goal:
- support finance review handoff
- support audit / investigation use
- support operational analysis and controlled downstream processing
- avoid ad hoc screenshot/manual copying workflows

export_types:
- finance_review_export
- audit_export
- failure_queue_export
- monthly_close_support_export
- filtered_report_list_export
- filtered_item_list_export

export_format_candidates:
- CSV
- XLSX
- PDF_summary_only_if_policy_allows

important_rule:
- CSV/XLSX are primary structured outputs
- PDF is summary/support output, not canonical machine handoff

export_scope_rules:
- applicant may export only own allowed scope where policy permits
- approver may export only assigned/routed scope where policy permits
- finance may export finance-authorized scope
- admin export must remain governance-scoped and auditable
- export must not leak cross-company data

export_content_rules:
- export should include canonical ids where needed
- export should preserve state separation
- export should preserve amount + currency_code
- export should preserve category code and display meaning where useful
- export should preserve allocation meaning where relevant
- export should preserve ERP result visibility where relevant

recommended_export_columns_report_level:
- expense_report_id
- applicant_user_id
- title
- expense_month
- report_currency_code
- total_amount
- submit_state
- approval_state
- finance_state
- erp_state
- settlement_state
- created_at
- updated_at

recommended_export_columns_item_level:
- expense_item_id
- expense_report_id
- expense_category_code
- usage_date
- merchant_name
- amount
- currency_code
- exchange_rate
- converted_amount
- converted_currency_code
- payment_method
- payment_type
- tax_category_code
- tax_amount
- project_code
- department_code
- duplicate_check_state

audit_export_rules:
- audit export should preserve event chronology
- audit export should preserve actor/action/time
- audit export should preserve correlation keys where relevant
- audit export must be authority-restricted

multilingual_export_rule:
- export labels may be localized
- canonical codes must remain intact
- translated labels must not replace canonical identifiers where auditability matters

multi_currency_export_rule:
- amount and currency_code must not be merged into opaque text only
- converted and original values must remain distinguishable where relevant
- report total and item-level original values should remain explainable

export_history_rule:
- export job/request should be auditable where policy requires
- export execution should remain explainable for sensitive scopes
- export is not a substitute for canonical history retention

not_allowed:
- export that hides canonical identifiers when they are needed
- export that merges approval/finance/ERP/settlement into one vague status
- export that drops original currency meaning in mixed-currency cases
- export that bypasses authority scope
- export as a hidden integration shortcut without governance

open_policy_variables_to_fix_later:
- exact export format catalog
- exact export authority matrix
- exact sensitive-column masking policy
- exact PDF summary scope
- exact audit export field depth
- exact export retention/log policy

design_consequence:
This policy keeps export safe by separating:
- output support from business truth
- localized label from canonical identifier
- structured export from summary export
- finance export from audit export
- export visibility from unrestricted data access

