# ============================================================
# PERSONA MEMORY MUTATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime rules for persona memory mutation.

runtime_rules:
memory mutation must remain policy-controlled
persistent memory requires explicit eligibility
short-term and working memory may be compacted
forbidden memory mutation paths must fail closed
all persistent mutation must remain auditable
