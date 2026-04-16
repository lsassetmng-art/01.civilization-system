# ============================================================
# PROJECT FLOW CODING START CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for checking whether a slice or scope
is ready for coding-start planning.

check_fields:
- target_scope
- upstream_slice_review_passed: yes_no
- upstream_slice_approval_recorded: yes_no
- blocked_scope_excluded: yes_no
- shared_local_decision_recorded_if_needed: yes_no
- safe_to_begin_coding_start_planning: yes_no
- notes
