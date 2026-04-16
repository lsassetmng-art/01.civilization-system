# ============================================================
# BUSINESS AI WORKER RESERVATION POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue policy.

rules:
- reservation is allowed when immediate compatible capacity is unavailable
- reservation priority is rank-first and time-second by default
- queue starvation must remain reviewable
- expired reservations may be removed by policy
