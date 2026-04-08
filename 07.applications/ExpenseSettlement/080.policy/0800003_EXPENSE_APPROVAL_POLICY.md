# ============================================================
# EXPENSE APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

approval_rules:
- approver must be authorized
- negative decision must include reason
- returned report may be edited and resubmitted
- approved report may require finance-side confirmation before ERP publish
