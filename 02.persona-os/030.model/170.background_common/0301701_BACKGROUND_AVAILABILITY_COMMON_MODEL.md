# ============================================================
# BACKGROUND AVAILABILITY COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common availability state for selectable backgrounds.

fields:
- availability_id
- user_id
- background_code
- availability_scope
- unlocked_flag
- source_type
- created_at
- updated_at

rules:
- availability and current preference remain distinct
- unlocked state does not imply current selection
