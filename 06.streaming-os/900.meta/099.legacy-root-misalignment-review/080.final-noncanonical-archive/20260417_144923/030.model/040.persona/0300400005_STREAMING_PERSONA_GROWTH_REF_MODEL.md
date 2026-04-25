# ============================================================
# STREAMING PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Track request/result/snapshot references for Streaming-originated
persona growth interactions without storing persona growth canonical truth.

fields:
- streaming_user_id
- persona_id
- latest_growth_request_event_id
- latest_growth_result_event_id
- latest_signed_snapshot_id
- latest_applied_snapshot_id
- last_result_consumed_at

usage_rule:
This model is a reference and consume-log surface only.

forbidden:
- local persona growth truth
- local growth level canonical
- local mutable growth mirror
