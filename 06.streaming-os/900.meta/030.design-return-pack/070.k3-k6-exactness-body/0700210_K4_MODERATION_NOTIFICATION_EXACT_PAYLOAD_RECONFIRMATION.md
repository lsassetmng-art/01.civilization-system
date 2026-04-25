# ============================================================
# K4 MODERATION NOTIFICATION EXACT PAYLOAD RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

scope:
- review pipeline exact payload
- moderation exact payload
- notification exact payload

payload_rule:
K4 payloads may contain:
- persona identity refs
- signed snapshot refs
- result event refs
- report/appeal/review identifiers
- notification and alert local state
- moderation workspace local state

payloads must not imply:
- local moderation-owned persona internal truth
- local persona mutable truth
- direct moderation mutation of Persona internals

safe_reading_examples:
- persona references in moderation are evidence/display linkage only
- notification payloads may expose persona-linked display by snapshot/result ref only
