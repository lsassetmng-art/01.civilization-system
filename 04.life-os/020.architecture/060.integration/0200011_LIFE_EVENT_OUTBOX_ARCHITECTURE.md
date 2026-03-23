# ============================================================
# LIFE EVENT OUTBOX ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outbox architecture for LifeOS outbound Persona sync events.

outbox_events:
- life_to_persona_growth_request
- life_to_persona_growth_event
- life_to_persona_context_sync_request
