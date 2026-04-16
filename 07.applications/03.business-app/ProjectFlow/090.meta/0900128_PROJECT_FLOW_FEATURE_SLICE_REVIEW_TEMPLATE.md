# ============================================================
# PROJECT FLOW FEATURE SLICE REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing feature-slice planning deliverables.

review_template_fields:
- feature_slice_name
- reviewer
- review_date
- review_result: pass_or_partial_or_hold
- deliverables_reviewed
- ownership_clarity_ok: yes_no
- boundary_clarity_ok: yes_no
- blocked_conditions_still_visible: yes_no
- followup_actions
- notes

review_rules:
- pass means the slice is usable as next-step planning input
- partial means only explicitly usable parts may continue
- hold means the slice must not unlock downstream planning yet
