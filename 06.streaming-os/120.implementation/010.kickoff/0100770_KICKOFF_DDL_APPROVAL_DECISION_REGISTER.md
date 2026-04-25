# ============================================================
# KICKOFF DDL APPROVAL DECISION REGISTER
# ============================================================

status: canonical-register
layer: implementation
domain: kickoff
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Central register for domain-level DDL draft approval decisions.

decision_template:
- domain
- decision_state
- decision_basis
- blocking_items
- non_blocking_cleanup
- reviewer_signoff_state
- note

allowed_decision_states:
- pending_reviewer_input
- pending_delta_application
- pending_blocker_resolution
- ready_for_approval_decision
- approved_for_ddl_draft_review
- approved_with_minor_non_blocking_cleanup
- blocked_pending_resolution

initial_state:
- all domains: pending_reviewer_input
