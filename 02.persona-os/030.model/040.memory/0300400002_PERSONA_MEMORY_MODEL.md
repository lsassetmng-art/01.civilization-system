# ============================================================
# PERSONA MEMORY MODEL
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_memory

purpose:
Defines the canonical memory truth record for a persona.

core_fields:
persona_memory_id
persona_id
memory_scope
memory_status
memory_version
short_term_summary
working_memory_summary
long_term_summary
persistent_memory_policy
last_compacted_at
created_at
updated_at

memory_scope_examples:
short_term
working
long_term
persistent-approved

rules:
Memory truth belongs to PersonaOS.
Not all observed information may become persistent memory.
Persistent memory must follow explicit policy.
