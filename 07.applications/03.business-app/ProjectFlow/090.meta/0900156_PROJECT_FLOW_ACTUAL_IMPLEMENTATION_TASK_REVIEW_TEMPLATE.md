# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing actual implementation task outputs.

review_template_fields:
- task_id
- task_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the task output is usable for downstream task breakdown
- partial means only explicitly usable outputs may continue
- hold means downstream dependent tasks should not unlock yet
