# ============================================================
# K1 FOUNDATION EXACT PAYLOAD RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k1-k2-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

scope:
- principal exact payload
- session exact payload

payload_rule:
K1 payloads may contain:
- persona_id
- signed_snapshot_ref
- applied_snapshot_id
- request_event_id
- result_event_id
- performer assignment references
- local presentation or lifecycle state

payloads must not imply:
- local persona mutable truth
- local persona growth canonical
- local persona trust canonical

safe_reading_examples:
- persona presence in principal/session is identity or display linkage only
- persona-facing display is snapshot-based
- growth/trust-related fields are request/result consume traces only
