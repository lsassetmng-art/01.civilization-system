# ============================================================
# STREAMING LIVE EVENT PHASE MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define explicit phases for live event progression.

live_event_phases:
- planning
- ticketing
- pre_open
- opening
- live_in_progress
- interval
- closing
- post_event_cleanup
- settlement
- archived

final_rule:
Live event progression must be phase-visible.
