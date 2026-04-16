# ============================================================
# POCKET SECRETARY NOTE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local notes and memo content.

fields:
- note_id
- user_id
- title
- body
- note_type
- visibility_scope
- archived_flag
- created_at
- updated_at

rules:
- note content is private by default
- export or transmission requires explicit bounded action
