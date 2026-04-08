# ============================================================
# PERSONA EXPERIENCE MODEL
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_experience

purpose:
Defines the canonical model
for interpreted experience derived from persona memory.

core_fields:
persona_experience_id
persona_id
source_memory_reference
experience_scope
experience_summary
experience_interpretation
experience_status
derived_at
created_at
updated_at

experience_scope_examples:
event_interpretation
interaction_interpretation
learned_pattern
meaning_summary

rules:
Persona experience is derived from canonical persona memory.
Persona experience is not raw memory itself.
Persona experience must remain traceable to memory truth.
