# ============================================================
# K6 MONETIZATION REACTION RANKING AD AUTH FLOW API RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

auth_rule:
K6 auth/RLS must protect monetization, reaction, ranking, and ad surfaces
without implying persona-internal ownership or mutation rights.

flow_rule:
Any K6-originated persona-facing change must follow:
- StreamingOS request event
- PersonaOS apply
- PersonaOS result event and/or signed snapshot
- StreamingOS consume only

api_transport_rule:
K6 transport may carry:
- target persona refs
- signed snapshot refs
- result refs
- local monetization/reaction/ranking/ad payloads
but must not carry local persona canonical ownership semantics.

result:
K6 auth / flow / API transport exactness remains valid under the locked reading.
