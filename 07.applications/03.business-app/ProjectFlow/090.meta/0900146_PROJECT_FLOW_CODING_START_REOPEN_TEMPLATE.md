# ============================================================
# PROJECT FLOW CODING START REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked coding-start package safely.

reopen_template_fields:
- package_id
- package_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- upstream_outputs_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked packages may reopen only after explicit blocked-condition review
- paused packages may reopen only after pause reason is re-evaluated
- boundary-aware packages require boundary recheck when needed
