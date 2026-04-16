# ============================================================
# PROJECT FLOW LIGHT AUTOMATION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow supports lightweight automation for visibility and notification,
not heavy unattended business workflow replacement.

allowed_primary_uses:
- overdue notification
- delayed milestone notification
- high risk escalation visibility
- sync failure notification
- pending review reminder

forbidden_or_discouraged_uses:
- hidden business-state mutation
- silent reassignment
- silent closure of business items
- approval bypass
- complex chained workflow logic

policy_rules:
- automation must stay understandable
- automation must stay customer-usable
- automation result should remain reviewable
