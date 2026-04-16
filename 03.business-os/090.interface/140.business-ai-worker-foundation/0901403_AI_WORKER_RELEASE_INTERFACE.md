# ============================================================
# AI WORKER RELEASE INTERFACE
# ============================================================

status: canonical
layer: interface
domain: business-ai-worker-foundation
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines release interface for active lending.

request_fields:
- lending_id
- release_reason

response_fields:
- released
- released_at
- next_reservation_promoted
