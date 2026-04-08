# ============================================================
# POCKET SECRETARY TODO MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local task items handled by PocketSecretary.

fields:
- todo_id
- user_id
- title
- detail
- priority_level
- due_at
- completion_status
- archived_flag
- category_code
- sync_state
- created_at
- updated_at

rules:
- todo completion is a local application action
  unless explicitly linked to an external workflow
- archived_flag and completion_status must remain distinct
