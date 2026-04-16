# ============================================================
# BUSINESS AI WORKER RESERVATION QUEUE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines reservation queue infrastructure.

components:
- reservation request endpoint
- queue store
- promotion scanner
- queue-status lookup
- cancellation path
