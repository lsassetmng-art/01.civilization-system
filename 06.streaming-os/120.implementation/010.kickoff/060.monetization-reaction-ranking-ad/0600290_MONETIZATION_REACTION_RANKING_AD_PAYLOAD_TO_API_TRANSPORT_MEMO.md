# ============================================================
# MONETIZATION REACTION RANKING AD PAYLOAD TO API TRANSPORT MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

transport_notes:
- tip detail/list transport must preserve non-public raw-event semantics
- reaction list transport must not imply public raw-event openness
- ranking list transport remains read/projection-facing only
- ad candidate transport must remain viewer-safe projection only
- ad display create remains controlled logging path
- auth carrier placement remains transport-stage detail
- HTTP/RPC binding remains open
