# ============================================================
# K3 CREATOR VIEWER AUTH FLOW API RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

auth_rule:
K3 auth/RLS must protect creator and viewer local state without implying
authority over Persona internals.

flow_rule:
Any K3-originated persona-facing change must follow:
- StreamingOS request event
- PersonaOS apply
- PersonaOS result event and/or signed snapshot
- StreamingOS consume only

api_transport_rule:
K3 transport may carry:
- request payloads
- result references
- snapshot references
- local continuity / playlist / presentation state
but must not carry local persona canonical ownership meaning.

result:
K3 auth / flow / API transport exactness remains valid under the locked reading.
