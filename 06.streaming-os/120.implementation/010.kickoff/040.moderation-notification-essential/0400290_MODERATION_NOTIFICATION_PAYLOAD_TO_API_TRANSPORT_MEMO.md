# ============================================================
# MODERATION NOTIFICATION PAYLOAD TO API TRANSPORT MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

transport_notes:
- moderation mutation endpoints require auditable mutation semantics
- general notification transport remains recipient-scoped
- review alert transport remains role-scoped
- platform event detail remains projection-safe, not raw runtime log output
- auth carrier placement remains transport-stage detail
- HTTP/RPC binding remains open
