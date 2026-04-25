# ============================================================
# CREATOR VIEWER PAYLOAD TO API TRANSPORT MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

transport_notes:
- creator endpoints remain creator/control-plane facing
- viewer discovery endpoints remain projection-facing
- viewer continuity mutation endpoints remain self-scoped
- private continuity data must never leak into public transport payloads
- auth carrier placement remains transport-stage detail
- HTTP/RPC binding remains open
