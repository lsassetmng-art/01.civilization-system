# ============================================================
# STREAMING LIVE EVENT TYPE MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the event type classification
for streaming live events.

live_event_types:
- concert_event
- idol_live_event
- theater_event
- festival_event
- public_ceremony_event
- sports_viewing_event
- political_rally_event
- school_festival_event
- religious_live_event
- military_parade_event
- marketplace_live_promotion_event
- creator_fan_event

final_rule:
Live events must use explicit type classification.
