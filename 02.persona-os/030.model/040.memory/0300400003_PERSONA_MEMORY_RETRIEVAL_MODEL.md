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
