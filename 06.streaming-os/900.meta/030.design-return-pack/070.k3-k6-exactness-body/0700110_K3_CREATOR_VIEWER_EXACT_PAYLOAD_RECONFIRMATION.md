# ============================================================
# K3 CREATOR VIEWER EXACT PAYLOAD RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

scope:
- creator platform exact payload
- viewer discovery exact payload
- viewer continuity exact payload

payload_rule:
K3 payloads may contain:
- persona_id
- performer_persona_id
- signed_snapshot_ref
- applied_snapshot_id
- request_event_id
- result_event_id
- playlist/watch-queue/history references
- creator/viewer local state
- local presentation state

payloads must not imply:
- performer binding as persona internal truth
- local creator/viewer persona canonical mirror
- local persona mutable truth

safe_reading_examples:
- performer binding is assignment linkage only
- creator/viewer payloads may use signed snapshot for display
- continuity/history remain viewer-local state, not persona internal truth
