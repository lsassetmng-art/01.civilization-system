# ============================================================
# EXPENSE OPEN ITEMS REFRESH AFTER POLICY BATCH
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Refreshes the open-item list after the recent bundled policy-detail design work.

already_fixed_in_recent_batches:
- approval_route_policy_detail
- finance_review_policy_detail
- category_master_policy
- evidence_requirement_matrix
- template_master_policy
- candidate_inbox_source_policy
- allocation_policy_detail
- settlement_business_rule_detail
- export_policy_detail
- reminder_policy_detail
- receipt_and_attachment_file_policy

remaining_open_items:
- exact threshold bands for approval routing
- exact department/project route matrices
- exact finance checklist catalogs
- exact category catalog rows by company scope
- exact evidence row matrix by company scope
- exact template catalog and visibility matrices
- exact candidate merge/expiry heuristics
- exact allocation rounding/remainder rule values
- exact settlement completion signal catalog
- exact export authority/masking matrix
- exact reminder cadence calendar
- exact file size/count numeric limits

current_judgement:
The remaining work is now mostly parameter/matrix filling,
not structural redesign.

next_natural_bundles:
- master catalog bundle
- operations numeric-rule bundle
- final closure/review bundle

