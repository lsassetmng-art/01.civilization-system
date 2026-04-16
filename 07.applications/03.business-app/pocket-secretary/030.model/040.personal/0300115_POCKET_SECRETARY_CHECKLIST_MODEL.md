# ============================================================
# POCKET SECRETARY CHECKLIST MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents checklist-oriented local task grouping
used inside PocketSecretary.

fields:
- checklist_id
- user_id
- title
- description
- checklist_type
- archived_flag
- created_at
- updated_at

rules:
- checklist is distinct from a single todo item
- checklist item completion and checklist archival remain distinct
- checklist may remain fully local unless explicitly tied to an external workflow
