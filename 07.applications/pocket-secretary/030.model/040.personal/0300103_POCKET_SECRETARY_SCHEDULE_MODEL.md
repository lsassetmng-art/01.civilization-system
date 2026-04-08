# ============================================================
# POCKET SECRETARY SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local schedule items managed in PocketSecretary.

fields:
- schedule_id
- user_id
- title
- description
- start_at
- end_at
- timezone_code
- schedule_type
- location_text
- status
- sync_state
- external_reference_id
- created_at
- updated_at

state_rules:
- local draft schedule and confirmed external schedule
  must remain distinguishable
- external_reference_id is optional
- sync_state must not imply legal confirmation by itself
