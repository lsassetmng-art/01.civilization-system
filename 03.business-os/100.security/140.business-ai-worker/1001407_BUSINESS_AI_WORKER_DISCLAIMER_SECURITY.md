# ============================================================
# BUSINESS AI WORKER DISCLAIMER SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements around disclaimer handling.

targets:
- medical consultation
- legal consultation
- high-risk management consultation

rules:
- disclaimer text and version must be protected from unauthorized tampering
- protected consultation must not start without valid disclaimer path
