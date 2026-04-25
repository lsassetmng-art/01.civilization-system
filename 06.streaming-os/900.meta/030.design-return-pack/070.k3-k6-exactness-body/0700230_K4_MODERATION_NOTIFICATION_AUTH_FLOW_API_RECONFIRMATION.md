# ============================================================
# K4 MODERATION NOTIFICATION AUTH FLOW API RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

auth_rule:
K4 auth/RLS must protect moderation, review, alert, and inbox surfaces
without implying persona-internal ownership or mutation rights.

flow_rule:
Moderation or appeal paths may trigger Persona-facing work only through:
- StreamingOS request event
- PersonaOS apply
- PersonaOS result event and/or signed snapshot
- StreamingOS consume only

api_transport_rule:
K4 transport may carry:
- moderation/report/appeal payloads
- persona-linked display refs
- snapshot refs
- result refs
but must not carry local persona canonical ownership semantics.

result:
K4 auth / flow / API transport exactness remains valid under the locked reading.
