# ============================================================
# GAME PERSONA ACCESS REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona access state inside GameOS.

fields:
- game_user_id
- persona_id
- access_status
- access_scope
- effective_from
- effective_until
- synced_at
