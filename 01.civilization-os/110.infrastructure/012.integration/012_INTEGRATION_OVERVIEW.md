# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: infrastructure
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the infrastructure overview of the integration domain.

summary:
The integration infrastructure layer defines the technical support
required to store contracts, resolve contract classes,
partition proposal-only and mutating paths,
cache projections safely, preserve traces,
and retrieve historical/audit integration records.

infrastructure_intent:
Integration crosses boundaries and therefore requires
strong partitioning between read-only export,
proposal-only intake, bounded sync, canonical write,
live event delivery, replay event delivery, and audit access.

scope:
- contract storage and indexing
- projection and mutation path partitioning
- export cache support
- proposal-only isolation
- bounded-sync and canonical-write support
- history/replay/audit retrieval
- trace storage and invalidation

required_behavior:
- Support contract-class lookup and authority-aware resolution.
- Support isolated proposal-only storage.
- Support projection-safe caches for exports.
- Support separate live, replay, and audit retrieval paths.
- Support invalidation on contract changes, authority changes, or projection changes.
