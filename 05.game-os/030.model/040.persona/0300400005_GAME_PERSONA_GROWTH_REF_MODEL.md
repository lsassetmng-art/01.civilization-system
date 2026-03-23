# ============================================================
# GAME PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Track Game-originated growth synchronization state.

fields:
- game_user_id
- persona_id
- last_growth_request_id
- last_growth_event_type
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at
