# ============================================================
# PROJECT FLOW DELIVERABLE PROGRESS TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for tracking deliverable progress and dependency readiness.

template_fields:
- deliverable_name
- produced_by_package
- prerequisite_deliverables
- review_status: not_started_or_in_review_or_pass_or_partial_or_hold
- approval_status: not_started_or_approved_or_partial_or_not_approved
- unlocks_next_deliverables
- ready_to_unlock_next: yes_no
- notes

rules:
- ready_to_unlock_next requires reviewed usable form
- partial review may unlock only explicitly usable next deliverables
- hold does not unlock downstream deliverables
