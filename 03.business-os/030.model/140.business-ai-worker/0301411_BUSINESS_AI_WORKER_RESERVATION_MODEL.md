# ============================================================
# BUSINESS AI WORKER RESERVATION MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue model.

minimum_fields:
- reservation_id
- company_id
- requested_rank
- requested_activity_mode
- requested_specialty
- requested_knowledge_depth_min
- requested_app_surface
- requested_duration
- queue_position
- reservation_status
- estimated_available_at
- requested_at
