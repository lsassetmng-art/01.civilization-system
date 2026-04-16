# ============================================================
# PROJECT FLOW CODING START POST REVIEW BRANCH TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding what happens after coding-start package review and approval.

template_fields:
- package_id
- package_name
- review_result: pass_or_partial_or_hold
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_coding_units
- still_blocked_units
- followup_actions
- notes

rules:
- pass plus approved unlocks next coding-unit planning
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream
