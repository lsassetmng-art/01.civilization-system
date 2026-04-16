# ============================================================
# BUSINESS AI WORKER PRIORITY POLICY MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation and lending priority policy model.

priority_order_default:
- Extra
- High
- Standard
- Entry

minimum_fields:
- priority_policy_id
- company_id
- rank_weight
- emergency_weight
- reservation_time_weight
- department_weight
- is_active
