# ============================================================
# SUMMARY PRIORITY SELECTION COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents dominant summary selection state.

fields:
- summary_priority_id
- user_id
- selected_message_type
- selected_priority_rank
- source_reference
- generated_at
- updated_at

rules:
- one dominant summary should be selected at a time
- selected summary and underlying source remain distinct
