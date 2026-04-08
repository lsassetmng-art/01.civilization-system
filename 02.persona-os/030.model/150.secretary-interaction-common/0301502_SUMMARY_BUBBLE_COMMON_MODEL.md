# ============================================================
# SUMMARY BUBBLE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common summary bubble content state.

fields:
- summary_bubble_id
- user_id
- secretary_character_code
- message_type
- message_title
- message_body
- priority_rank
- source_scope
- created_at
- updated_at

rules:
- summary bubble content remains advisory or informational
- priority and source remain distinguishable
