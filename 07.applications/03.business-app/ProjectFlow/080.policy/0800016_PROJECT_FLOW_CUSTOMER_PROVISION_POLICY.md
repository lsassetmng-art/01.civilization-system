# ============================================================
# PROJECT FLOW CUSTOMER PROVISION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
ProjectFlow is provided as a low-support monthly-use application.

included_baseline_scope:
- standard application usage
- customer-facing material generation
- spreadsheet export
- project/task/milestone/issue/risk/time-entry operation
- template and WBS proposal support within product scope

support_positioning:
- support is intentionally minimal
- product should remain understandable without heavy handholding
- design should reduce support burden through clarity and consistency

service_boundaries:
- application usage support may be minimal
- custom consulting is not assumed as standard monthly scope
- customer-specific workflow redesign is not assumed as standard monthly scope
- bespoke development is not assumed as standard monthly scope
