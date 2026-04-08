# ============================================================
# PERSONA HISTORY MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_history

purpose:
Defines the canonical model
for chronological record of major persona transitions and events.

core_fields:
persona_history_id
persona_id
history_scope
history_summary
history_status
source_event_reference
source_snapshot_reference
recorded_at
created_at
updated_at

history_scope_examples:
major_transition
significant_event_sequence
state_change_history
lifecycle_history

rules:
Persona history is not identical to raw persona memory.
Persona history is an ordered historical view over significant persona events and transitions.
Persona history must remain traceable to canonical state-side records.
