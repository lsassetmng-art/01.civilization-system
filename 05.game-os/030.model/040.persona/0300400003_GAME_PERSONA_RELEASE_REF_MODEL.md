# ============================================================
# GAME PERSONA RELEASE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona release validity state inside GameOS.

fields:
- game_user_id
- persona_id
- release_status
- release_version
- effective_from
- effective_until
- synced_at
