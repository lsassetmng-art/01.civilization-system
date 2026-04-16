# ============================================================
# LIFE REMINDER TONE BASIS MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines tone basis references for reminders.

entity_name:
life_reminder_tone_basis

meaning:
Represents the basis used to choose an appropriate reminder tone downstream.

core_fields:
- reminder_tone_basis_id
- user_id
- source_type
- tone_label
- explanation_note
- created_at
