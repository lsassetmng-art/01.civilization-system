# ============================================================
# POCKET SECRETARY ERP REQUEST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for ERP-facing request preparation,
review, submission attempt, and status tracking.

runtime stages:
- draft
- ready_for_review
- awaiting_user_confirmation
- submitted_pending_confirmation
- confirmed
- failed
- conflicted

rules:
- draft creation is local
- review and confirmation remain explicit
- submission and confirmation are distinct
- failed submission must not be shown as success
