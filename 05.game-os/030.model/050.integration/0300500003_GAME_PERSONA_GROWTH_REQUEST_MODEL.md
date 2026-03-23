# ============================================================
# GAME PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Represent a Game-originated request to Persona growth processing.

fields:
- growth_request_id
- game_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- created_at
