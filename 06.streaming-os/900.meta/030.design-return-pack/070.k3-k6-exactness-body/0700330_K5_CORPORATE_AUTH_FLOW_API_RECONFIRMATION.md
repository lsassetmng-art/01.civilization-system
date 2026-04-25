# ============================================================
# K5 CORPORATE AUTH FLOW API RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

auth_rule:
K5 auth/RLS must protect channel, oversight, and affiliation surfaces
without implying company ownership of Persona internals.

flow_rule:
Any corporate-originated persona-facing change must follow:
- formal request event
- PersonaOS or formal contract authority apply path
- result event and/or signed snapshot consume
- StreamingOS consume only

api_transport_rule:
K5 transport may carry:
- signed snapshot refs
- formal access/license/release refs
- channel/oversight/affiliation payloads
but must not carry local persona canonical ownership semantics.

result:
K5 auth / flow / API transport exactness remains valid under the locked reading.
