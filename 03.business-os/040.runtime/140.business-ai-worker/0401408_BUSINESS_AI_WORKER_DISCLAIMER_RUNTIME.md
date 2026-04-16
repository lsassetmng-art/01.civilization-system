# ============================================================
# BUSINESS AI WORKER DISCLAIMER RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines disclaimer runtime.

disclaimer_targets:
- medical consultation
- legal consultation
- management high-risk consultation

runtime_rules:
- disclaimer must be shown before actionable high-risk consultation
- consent must be recorded before active consultation
- disclaimer version must be traceable in session history
