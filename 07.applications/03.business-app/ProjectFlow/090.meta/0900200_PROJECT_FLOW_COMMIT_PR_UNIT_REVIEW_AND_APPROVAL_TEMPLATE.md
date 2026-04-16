# ============================================================
# PROJECT FLOW COMMIT PR UNIT REVIEW AND APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing and approving commit / PR-sized unit outputs.

review_fields:
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

approval_fields:
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_units
- approval_notes

rules:
- pass plus approved unlocks next dependent units
- partial approval unlocks only explicitly approved scope
- hold or not-approved unlocks nothing downstream
