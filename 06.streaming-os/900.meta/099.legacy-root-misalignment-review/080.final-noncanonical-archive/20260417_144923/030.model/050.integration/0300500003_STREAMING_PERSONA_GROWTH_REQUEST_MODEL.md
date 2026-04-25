# ============================================================
# STREAMING PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Represent a Streaming-originated request event toward Persona growth processing.

fields:
- growth_request_id
- streaming_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- created_at

usage_rule:
This is a request model only.

forbidden:
- local growth application state as canonical truth
- local persona mutable state payload mirror
