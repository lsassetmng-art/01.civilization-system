# ============================================================
# POCKET SECRETARY ERP REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded ERP-facing request preparation state
originating from PocketSecretary.

fields:
- request_id
- user_id
- request_type
- payload_reference
- review_status
- submission_status
- target_system_code
- external_request_id
- created_at
- updated_at

rules:
- local request preparation and external submission
  must remain distinguishable
- review_status and submission_status must be separate
- external_request_id is assigned only after confirmed submission
