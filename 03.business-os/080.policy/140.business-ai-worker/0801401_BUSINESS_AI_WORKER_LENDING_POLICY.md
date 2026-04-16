# ============================================================
# BUSINESS AI WORKER LENDING POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy for lending AI workers.

rules:
- lending requires valid company scope
- lending requires an allowed activity mode
- lending requires compatible specialty and world scope
- lending must respect capacity and subscription
- unauthorized consumer surfaces must be rejected
