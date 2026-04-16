# ============================================================
# PROJECT FLOW DEVICE PARITY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must provide the same functional capability
on smartphone and PC.

policy_rules:
- device-based feature restriction is forbidden
- responsive and adaptive layout difference is allowed
- permission rules must apply equally across devices
- unpaid read-only mode must apply equally across devices
- export/report/integration capabilities must follow the same entitlement rules across devices
