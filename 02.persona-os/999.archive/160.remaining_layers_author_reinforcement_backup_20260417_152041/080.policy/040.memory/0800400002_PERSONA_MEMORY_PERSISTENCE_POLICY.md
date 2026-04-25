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
