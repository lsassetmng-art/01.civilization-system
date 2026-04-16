# ============================================================
# BUSINESS AI WORKER LENDING AUTH SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines authentication requirements for lending requests.

requirements:
- authenticated caller
- authenticated company scope
- authenticated consumer surface
- authenticated worker usage actor or system principal

rule:
Unauthenticated lending requests must be rejected.
