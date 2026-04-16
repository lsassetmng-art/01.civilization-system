# ============================================================
# PROJECT FLOW CONCRETE_CODING_WORK_GROUP_REVIEW_TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing concrete coding work-group outputs.

review_template_fields:
- work_group_id
- work_group_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the work-group output is usable for downstream concrete coding
- partial means only explicitly usable outputs may continue
- hold means downstream dependent work groups should not unlock yet
