# ============================================================
# PERSONA OS MEMORY CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares memory-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA MEMORY CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of persona memory.

summary:
Memory defines what a persona may retain,
what must remain temporary,
and what may become persistent under explicit policy.

constitutional_principles:
persistent memory is not implicit
forbidden memory mutation must fail closed
memory authority remains inside PersonaOS

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA MEMORY ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of persona memory boundaries.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA MEMORY MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona memory models.

summary:
Memory models define memory scope,
memory persistence,
memory authority,
and memory mutation restrictions.

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

# ============================================================
# PERSONA MEMORY RETRIEVAL MODEL
# ============================================================

status: canonical
layer: model
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_memory_retrieval

purpose:
Defines the canonical model
for retrieval behavior over persona memory.

core_fields:
persona_memory_retrieval_id
persona_id
retrieval_scope
retrieval_query
retrieval_context
retrieval_result_summary
retrieval_status
retrieved_at
created_at
updated_at

retrieval_scope_examples:
short_term
working
long_term
persistent-approved

rules:
Memory retrieval does not create memory truth by itself.
Retrieval must remain bounded by memory policy.
Retrieved memory must remain traceable to canonical persona memory.

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

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA MEMORY POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona memory policies.

# ============================================================
# PERSONA MEMORY PERSISTENCE POLICY
# ============================================================

status: canonical
layer: policy
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
persistent memory requires explicit eligibility
not all observed interaction may become persistent memory
forbidden memory categories must fail closed
memory compaction must preserve policy boundaries

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA MEMORY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona memory interfaces.

# ============================================================
# PERSONA MEMORY MUTATION INTERFACE
# ============================================================

status: canonical
layer: interface
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

interface_examples:
PersonaMemoryMutationRequest
PersonaMemoryMutationResponse
PersonaMemoryMutationAuditEvent

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is memory defined as memory truth rather than generic history/state?
2. Is raw memory clearly separated from interpreted experience?
3. Are retrieval and decay correctly kept as memory-side behavior?
4. Is persistence policy explicit enough?
5. Do interface contracts keep mutation and retrieval boundaries explicit?
