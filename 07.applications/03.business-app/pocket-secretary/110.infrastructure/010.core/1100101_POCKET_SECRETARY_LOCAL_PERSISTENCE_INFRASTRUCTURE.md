# ============================================================
# POCKET SECRETARY LOCAL PERSISTENCE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines infrastructure support for local application persistence.

support areas:
- local database support
- key-value preference storage
- local cache support
- retained draft storage
- state restoration support

rules:
- local persistence must support offline continuity
- persisted local state and confirmed external state must remain distinguishable
- local writes must not be silently discarded
