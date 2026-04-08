# ============================================================
# TRANSITION MODE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: mode
subdomain: transition-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for transition-facing modes.

scope:
Covers source/target state tracking,
rollback metadata storage,
transition history retrieval,
and partitioning of active transition versus completed history.

infrastructure_focus:
- source/target state index
- active transition store
- rollback metadata store
- completed transition history reader
- transition trace log

storage_contract:
transition_mode_fields:
- transition_mode_class
- source_state
- target_state
- exit_condition
- rollback_ref
- authority_basis
- lifecycle_state
- revision_ref

index_strategy:
- by source_state
- by target_state
- by transition_mode_class
- by lifecycle_state
- by rollback_ref

cache_rules:
- active transition cache must be separate from completed transition history
- critical transition metadata must not be shared into public partitions
- rollback metadata retrieval must be version-aware

failure_codes:
- TRANSITION_MODE_INFRA_STATE_INDEX_MISSING
- TRANSITION_MODE_INFRA_ROLLBACK_REF_BROKEN
- TRANSITION_MODE_INFRA_ACTIVE_HISTORY_CONFLICT

example_scenarios:
- A staged activation reads active transition metadata from the active transition partition only.
