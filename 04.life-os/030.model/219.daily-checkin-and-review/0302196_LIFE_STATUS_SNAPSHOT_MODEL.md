# ============================================================
# LIFE STATUS SNAPSHOT MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: daily-checkin-and-review
owner: Boss
prepared_by: Zero

purpose:
Defines daily status snapshots in LifeOS.

entity_name:
life_status_snapshot

meaning:
Represents a compact snapshot of the user's current life state.

core_fields:
- status_snapshot_id
- user_id
- captured_at
- mood_label
- energy_label
- condition_label
- summary_note
- created_at
