# ============================================================
# LIFE SILENCE WINDOW MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines silence windows in LifeOS.

entity_name:
life_silence_window

meaning:
Represents a time range when non-urgent interventions should be suppressed.

core_fields:
- silence_window_id
- user_id
- starts_at
- ends_at
- recurrence_rule
- scope_label
- created_at
- updated_at
