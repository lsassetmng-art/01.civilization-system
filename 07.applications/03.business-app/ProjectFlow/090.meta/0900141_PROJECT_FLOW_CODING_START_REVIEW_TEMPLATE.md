# ============================================================
# PROJECT FLOW CODING START REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reviewing coding-start planning deliverables.

review_template_fields:
- package_id
- package_name
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
- pass means the coding-start planning deliverable
  is usable as next-step coding-scope input
- partial means only explicitly usable parts may continue
- hold means the deliverable must not unlock downstream coding-scope planning yet
