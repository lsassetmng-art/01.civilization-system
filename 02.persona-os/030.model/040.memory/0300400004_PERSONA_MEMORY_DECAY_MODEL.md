# ============================================================
# PERSONA MEMORY DECAY MODEL
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_memory_decay

purpose:
Defines the canonical model
for decay behavior over persona memory.

core_fields:
persona_memory_decay_id
persona_id
memory_scope
decay_policy
decay_status
decay_rate
last_decay_at
next_decay_at
created_at
updated_at

memory_scope_examples:
short_term
working
long_term

rules:
Persistent-approved memory must not decay implicitly against policy.
Decay must remain explicit and policy-bounded.
Decay does not erase auditability of canonical memory history.
