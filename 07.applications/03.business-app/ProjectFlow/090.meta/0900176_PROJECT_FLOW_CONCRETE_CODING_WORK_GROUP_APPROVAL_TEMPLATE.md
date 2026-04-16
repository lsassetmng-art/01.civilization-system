# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving concrete coding work-group outputs.

approval_template_fields:
- work_group_id
- work_group_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_work_groups
- notes

approval_rules:
- approval applies only to explicit work-group outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent work groups
