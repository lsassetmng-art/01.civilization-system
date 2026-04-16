# ============================================================
# PROJECT FLOW PATCH TASK REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving patch-level coding task outputs.

review_fields:
- patch_task_id
- patch_task_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_patch_tasks
- approval_notes

rules:
- pass plus approved unlocks next dependent patch tasks
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream
