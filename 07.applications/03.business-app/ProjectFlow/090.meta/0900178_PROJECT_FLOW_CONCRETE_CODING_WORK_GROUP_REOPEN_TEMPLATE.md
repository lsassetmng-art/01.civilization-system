# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked concrete coding work group safely.

reopen_template_fields:
- work_group_id
- work_group_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- prerequisite_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked work groups may reopen only after explicit blocked-condition review
- paused work groups may reopen only after pause reason is re-evaluated
- boundary-aware work groups require boundary recheck when needed
