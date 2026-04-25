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

# EXACT READY POLICY REINFORCEMENT

status_extension: author-reviewed-with-policy-reinforcement
reinforced_at: 20260417_152041
domain: policy

minimum_policy_requirements:
- define what is allowed
- define what is blocked
- define decision boundary
- define lifecycle or retention rule where applicable
- define exception handling where applicable

mandatory_policy_controls:
- no ambiguous allow or deny condition
- no silent override
- no missing retention or expiry rule where applicable

minimum_policy_acceptance_targets:
- allowed case
- blocked case
- exception or expiry case where applicable
