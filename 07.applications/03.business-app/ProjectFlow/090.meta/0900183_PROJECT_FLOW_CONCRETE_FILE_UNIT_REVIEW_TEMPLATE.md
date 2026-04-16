# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing concrete file/task unit outputs.

review_template_fields:
- unit_id
- unit_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- outputs_reviewed
- ownership_boundary_preserved: yes_no
- blocked_scope_excluded: yes_no
- followup_actions
- notes

review_rules:
- pass means the file/unit output is usable for downstream file or task unlock
- partial means only explicitly usable outputs may continue
- hold means downstream dependent units should not unlock yet
