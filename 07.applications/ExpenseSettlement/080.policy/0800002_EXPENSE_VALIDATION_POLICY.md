# ============================================================
# EXPENSE VALIDATION POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

minimum_rules:
- amount must be greater than zero
- usage_date is required
- category is required
- payment_method is required
- required evidence categories must include receipt
- future date must warn or block by policy
- duplicate suspicion must remain visible
