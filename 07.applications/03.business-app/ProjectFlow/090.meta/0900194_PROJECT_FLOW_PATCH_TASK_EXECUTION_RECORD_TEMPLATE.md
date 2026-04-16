# ============================================================
# PROJECT FLOW PATCH TASK EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for patch-level coding tasks.

execution_record_fields:
- patch_task_id
- patch_task_name
- scope_type
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- prerequisite_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused patch tasks must record pause reason explicitly
- boundary-aware patch tasks must keep blocked conditions visible
- done status should list produced outputs explicitly
