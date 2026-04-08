# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the infrastructure overview of the player domain.

summary:
The player infrastructure layer defines the technical support
required to store, resolve, cache, invalidate, and historically retrieve
player identity, role, progress, boundary, and lifecycle state safely.

infrastructure_intent:
Player infrastructure must support deterministic live participation resolution
while keeping historical player traces distinct
and preventing restricted state leakage through caches or projections.

scope:
- player record storage and indexing
- identity/role/progress/boundary lookup
- current-live resolution support
- history and audit retrieval
- disclosure-aware caching
- invalidation on lifecycle and authority changes

required_behavior:
- Support lookup by player_ref and identity_ref.
- Support live player resolution separated from history.
- Support role/progress/boundary component retrieval.
- Support scope-aware projection caches.
- Support invalidation on suspension, archival, restriction, or authority change.
