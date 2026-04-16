# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for concrete coding work groups.

execution_record_fields:
- work_group_id
- work_group_name
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
- paused work groups must record pause reason explicitly
- boundary-aware work groups must keep blocked conditions visible
- done status should list produced outputs explicitly
