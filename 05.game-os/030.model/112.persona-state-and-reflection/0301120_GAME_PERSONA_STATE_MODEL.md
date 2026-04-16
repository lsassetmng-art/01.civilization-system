# ============================================================
# GAME PERSONA STATE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-persona-state
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_persona_state stores GameOS local truth for Persona or Persona-connected
characters within title, runtime, session, route, or save context.

categories:
- romance-state
- battle-state
- companion-state
- navigator-state
- memory-adjacent-state

scope_examples:
- interaction-scoped
- session-scoped
- save-scoped
- title-scoped

core_principles:
- this is not PersonaOS canonical state
- local values must not directly become canonical values
- state feeds relation, memory marker, and impact extraction
