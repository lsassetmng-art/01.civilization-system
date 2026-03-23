# ============================================================
# GAME EVENT OUTBOX ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outbox architecture for GameOS outbound Persona sync events.

outbox_events:
- game_to_persona_growth_request
- game_to_persona_growth_event
- game_to_persona_context_sync_request
