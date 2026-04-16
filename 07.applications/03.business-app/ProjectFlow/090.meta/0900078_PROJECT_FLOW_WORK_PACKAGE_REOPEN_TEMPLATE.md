# ============================================================
# PROJECT FLOW WORK PACKAGE REOPEN TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for reopening a paused or blocked work package safely.

reopen_template_fields:
- package_id
- package_name
- previous_status: paused_or_blocked
- reopen_request_date
- reopen_reason
- blocking_issue_resolved: yes_no
- conflict_review_rerun_needed: yes_no
- prerequisite_documents_rechecked: yes_no
- safe_to_reopen: yes_no
- reopen_notes

reopen_rules:
- blocked packages may reopen only after explicit blocking condition review
- paused packages may reopen only after pause reason is re-evaluated
- reopened work must not skip gate review when conflict-sensitive
