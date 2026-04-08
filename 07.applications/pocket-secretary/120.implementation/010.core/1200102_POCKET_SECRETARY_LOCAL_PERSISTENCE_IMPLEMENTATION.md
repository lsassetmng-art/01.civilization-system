# ============================================================
# POCKET SECRETARY LOCAL PERSISTENCE IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for local persistence.

implementation directions:
- use structured local storage for model-backed data
- separate persistent entities from transient runtime state
- preserve pending and confirmed state distinctions
- support safe local draft persistence

examples:
- schedule entity persistence
- todo entity persistence
- note entity persistence
- settings persistence
- sync metadata persistence
