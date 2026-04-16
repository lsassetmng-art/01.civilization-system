# ============================================================
# GAME OS PERSONA STATE AND REFLECTION OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-state-and-reflection
document_type: overview
owner: Boss
prepared_by: Zero

summary:
This domain contains the full GameOS local Persona meaning chain.

chain:
- game Persona state
- game Persona relation
- game Persona memory marker
- persona impact event
- persona reflection candidate
- persona reflection decision
- persona reflection sync result

principles:
- game-local state is not PersonaOS canonical truth
- relation is separated from raw state
- memory marker is separated from raw event log
- impact event is separated from reflection candidate
- decision is separated from sync
- direct overwrite is forbidden
