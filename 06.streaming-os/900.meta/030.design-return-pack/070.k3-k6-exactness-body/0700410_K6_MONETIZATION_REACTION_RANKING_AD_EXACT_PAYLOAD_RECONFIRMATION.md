# ============================================================
# K6 MONETIZATION REACTION RANKING AD EXACT PAYLOAD RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

scope:
- monetization exact payload
- reaction/ranking/ad exact payload

payload_rule:
K6 payloads may contain:
- target_persona_id
- signed_snapshot_ref
- result_event_ref
- local reaction intensity
- local tipping limits
- local stop flags
- balances, ranking signals, ad delivery local state

payloads must not imply:
- local persona emotional canonical
- local persona profile canonical
- local persona mutable truth

safe_reading_examples:
- emotional auto tipping consumes signed snapshot or formal Persona result refs only
- reaction intensities remain Streaming-local derived state
- monetization and ranking remain Streaming-local operational truth
