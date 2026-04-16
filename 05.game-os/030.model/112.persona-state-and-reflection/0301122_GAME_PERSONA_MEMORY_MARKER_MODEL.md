# ============================================================
# GAME PERSONA MEMORY MARKER MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-persona-memory-marker
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_persona_memory_marker stores meaningful local memory traces that may later
support relation summaries or reflection candidates.

marker_types:
- promise marker
- rescue marker
- betrayal marker
- repeated encounter marker
- shared milestone marker
- emotional turning-point marker

responsibilities:
- salience anchor
- relation-support anchor
- memory-candidate anchor
- repeated-experience anchor

core_principles:
- marker is not raw event log
- marker is not canonical memory
- marker supports impact extraction, not direct canonical overwrite
