# ============================================================
# BUSINESS AI WORKER SUBSCRIPTION POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines subscription policy.

rules:
- active subscription is required for paid rank usage
- subscribed capacity determines usable pool size
- expired or suspended subscription may block new grants
- existing active sessions may be handled by separate grace policy if defined
