# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow must support customer-facing schedule output derived from WBS data.

policy_rules:
- customer-facing schedule must use explanation-friendly structure
- internal operational detail and customer-facing detail must remain separable
- customer-facing schedule may simplify task granularity
- milestone visibility must remain strong
- external-use schedule output must remain human-reviewable
