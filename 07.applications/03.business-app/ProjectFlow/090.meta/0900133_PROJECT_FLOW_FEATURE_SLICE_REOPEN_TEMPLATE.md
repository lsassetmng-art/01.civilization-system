# ============================================================
# PROJECT FLOW FEATURE SLICE REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked feature slice safely.

reopen_template_fields:
- feature_slice_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- upstream_deliverables_rechecked: yes_no
- blocked_condition_resolved: yes_no
- boundary_check_rerun_needed: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked slices may reopen only after explicit blocked-condition review
- paused slices may reopen only after pause reason is re-evaluated
- boundary-aware slices require boundary recheck when needed
