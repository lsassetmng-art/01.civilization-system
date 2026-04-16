# ============================================================
# PROJECT FLOW WORK PACKAGE EXECUTION RECORD TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for recording execution status
after a work package passes gate review.

execution_record_fields:
- package_id
- package_name
- scope_type
- gate_review_result: pass_or_block
- execution_started: yes_no
- execution_status: not_started_or_in_progress_or_paused_or_done
- start_date
- pause_reason
- completion_summary
- produced_documents
- next_followup
- notes

recording_rules:
- blocked packages should record non-start explicitly
- paused packages should record pause reason explicitly
- completed packages should record produced documents explicitly
