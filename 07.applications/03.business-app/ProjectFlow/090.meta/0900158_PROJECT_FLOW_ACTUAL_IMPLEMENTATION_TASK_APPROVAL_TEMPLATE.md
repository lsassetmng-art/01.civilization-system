# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving actual implementation task outputs.

approval_template_fields:
- task_id
- task_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_tasks
- notes

approval_rules:
- approval applies only to explicit task outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent tasks
