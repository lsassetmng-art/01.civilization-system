# ============================================================
# PROJECT FLOW CODING START APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving coding-start planning outputs.

approval_template_fields:
- package_id
- package_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_coding_units
- notes

approval_rules:
- approval applies to coding-start planning output only
- partial approval must keep blocked scope explicit
- no downstream coding unit should start from unapproved blocked scope
