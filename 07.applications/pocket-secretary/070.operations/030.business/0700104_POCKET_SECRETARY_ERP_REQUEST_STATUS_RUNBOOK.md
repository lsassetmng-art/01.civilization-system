# ============================================================
# POCKET SECRETARY ERP REQUEST STATUS RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines status handling for ERP-facing requests.

status categories:
- draft
- review_ready
- awaiting_confirmation
- submitted_pending_confirmation
- confirmed
- failed
- conflicted

rules:
- request draft and submitted state must remain distinct
- confirmation must come from outside the local draft surface
- failure must remain visible until resolved
