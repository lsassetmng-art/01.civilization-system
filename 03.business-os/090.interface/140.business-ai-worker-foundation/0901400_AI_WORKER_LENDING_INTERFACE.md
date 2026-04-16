# ============================================================
# AI WORKER LENDING INTERFACE
# ============================================================

status: canonical
layer: interface
domain: business-ai-worker-foundation
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines official lending request and response interface.

request_fields:
- company_id
- requested_rank
- requested_activity_mode
- requested_world_scope
- requested_specialty
- requested_knowledge_depth_min
- requested_app_surface
- requested_task_summary
- requested_duration
- requested_priority

response_status:
- granted
- queued
- rejected
