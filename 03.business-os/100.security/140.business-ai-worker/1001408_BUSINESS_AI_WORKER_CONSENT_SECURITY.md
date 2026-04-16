# ============================================================
# BUSINESS AI WORKER CONSENT SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for consent records.

rules:
- consent must be explicit where required
- consent records must be durable and auditable
- consent replay or falsification must be prevented
