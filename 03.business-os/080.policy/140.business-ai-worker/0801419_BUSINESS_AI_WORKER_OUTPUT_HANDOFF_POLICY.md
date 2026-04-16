# ============================================================
# BUSINESS AI WORKER OUTPUT HANDOFF POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines output handoff policy.

rules:
- outputs must carry sufficient traceability
- protected outputs may require review or approval before handoff
- handoff failures must be auditable
