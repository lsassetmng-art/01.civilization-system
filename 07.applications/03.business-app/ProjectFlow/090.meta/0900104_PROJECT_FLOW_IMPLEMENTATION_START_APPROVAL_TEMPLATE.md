# ============================================================
# PROJECT FLOW IMPLEMENTATION START APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving implementation-start planning deliverables.

approval_template_fields:
- package_id
- package_name
- deliverable_name
- approval_result: approved_or_partially_approved_or_not_approved
- approval_date
- approved_scope
- blocked_scope
- next_allowed_actions
- notes

approval_rules:
- approval applies to planning output only
- approval does not automatically mean coding start
- blocked scope must remain explicit after approval review
