# ============================================================
# AI WORKER RESERVATION INTERFACE
# ============================================================

status: canonical
layer: interface
domain: business-ai-worker-foundation
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue interface.

request_fields:
- company_id
- requested_rank
- requested_activity_mode
- requested_specialty
- requested_duration
- requested_priority

response_fields:
- reservation_id
- queue_position
- estimated_available_at
- reservation_status
