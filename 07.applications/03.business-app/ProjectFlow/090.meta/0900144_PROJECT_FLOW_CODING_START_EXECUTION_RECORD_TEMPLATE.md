# ============================================================
# PROJECT FLOW CODING START EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
for coding-start planning packages.

execution_record_fields:
- package_id
- package_name
- local_or_boundary_aware
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- upstream_outputs_confirmed: yes_no
- current_outputs
- review_status
- approval_status
- next_followup
- notes

recording_rules:
- paused packages must record pause reason explicitly
- boundary-aware packages must keep blocked conditions visible
- done status should list produced planning outputs explicitly
