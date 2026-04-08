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

summary:
Memory policy governs persistence eligibility,
forbidden memory categories,
memory compaction,
decay behavior,
and derived-experience boundaries.

policy_groups:
persistence policy
forbidden memory policy
compaction policy
decay policy
derived experience policy

policy_rules:
persistent memory requires explicit eligibility
forbidden memory mutation must fail closed
memory compaction must preserve traceability
memory decay must remain policy-bounded
derived experience must remain traceable to memory truth

boundary:
Memory policy does not redefine state truth.
Memory policy does not redefine identity truth.
Memory policy does not redefine snapshot truth.
