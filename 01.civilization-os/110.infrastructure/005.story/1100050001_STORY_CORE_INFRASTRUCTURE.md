# ============================================================
# STORY CORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core infrastructure requirements for canonical story handling.

scope:
Covers story storage, scope indexing,
stage lookup, branch lookup,
replay chain retrieval,
correction history, caching,
and trace persistence.

design_intent:
Story infrastructure must provide one coherent live path
and one coherent historical replay path,
without allowing branch leakage or live/history cache confusion.

infrastructure_components:
- story registry store
- stage resolver
- branch resolver
- live story cache
- replay/history reader
- correction history store
- disclosure-aware projection cache
- story trace log

storage_contract:
story_registry_fields:
- story_id
- story_code
- story_scope
- story_type
- current_stage
- branch_policy
- branch_visibility_class
- lifecycle_state
- disclosure_class
- revision_ref
- created_at
- updated_at

index_strategy:
primary_indexes:
- by story_scope
- by story_type
- by lifecycle_state
- by current_stage
secondary_indexes:
- by branch_policy
- by branch_visibility_class
- by revision_ref

cache_strategy:
cache_keys:
- story_scope
- story_type
- actor_visibility_class
- request_mode(live_or_replay)
cache_rules:
- live story cache must not be reused for replay/history requests
- restricted branch outputs must use visibility-aware cache partitioning
- completed/cancelled story outputs must not pollute current-live cache

history_path_rules:
- replay retrieval uses revision or stage chain
- replay path is label-aware and consumer-aware
- correction history must preserve prior stage and branch lineage

trace_requirements:
- stage change trace
- branch decision trace
- correction trace
- replay read trace where policy requires
- denial trace

failure_codes:
- STORY_INFRA_REGISTRY_UNAVAILABLE
- STORY_INFRA_SCOPE_INDEX_MISSING
- STORY_INFRA_STAGE_LOOKUP_FAILED
- STORY_INFRA_BRANCH_LOOKUP_FAILED
- STORY_INFRA_LIVE_REPLAY_CACHE_CONFLICT
- STORY_INFRA_TRACE_WRITE_FAILED

example_scenarios:
- A live city story reads current_stage from live cache only.
- A replay request loads revision-linked stage history without touching live cache.
