# ============================================================
# GAME SYNC ADJUDICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for save snapshot acceptance and conflict resolution handling.

runtime_scope:
- validate adjudication target
- validate envelope, snapshot, and conflict basis
- update accepted save state
- preserve continuity and conflict traceability

trigger_conditions:
- save envelope accepted
- save snapshot captured
- save conflict detected
- conflict resolved
- save rejected

processing_steps:
1 resolve snapshot or conflict target
2 verify accepted envelope, snapshot lineage, and player/title basis
3 apply adjudication state transition
4 persist adjudication result
5 preserve audit and adjudication trace

state_transition:
- captured -> accepted
- accepted -> superseded
- accepted -> invalidated
- detected -> resolved
- detected -> rejected

success_condition:
- sync adjudication lifecycle updated explicitly

failure_condition:
- invalid target
- envelope, snapshot, conflict, or lineage basis unresolved
- persistence failure
