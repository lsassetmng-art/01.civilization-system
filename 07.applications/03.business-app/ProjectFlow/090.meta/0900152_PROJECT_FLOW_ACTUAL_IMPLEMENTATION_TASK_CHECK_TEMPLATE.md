# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for checking whether a scope is ready
for actual implementation task breakdown.

check_fields:
- target_scope
- coding_start_review_passed: yes_no
- coding_start_approval_recorded: yes_no
- blocked_scope_excluded: yes_no
- shared_local_decision_recorded_if_needed: yes_no
- safe_to_begin_actual_implementation_task_breakdown: yes_no
- notes
