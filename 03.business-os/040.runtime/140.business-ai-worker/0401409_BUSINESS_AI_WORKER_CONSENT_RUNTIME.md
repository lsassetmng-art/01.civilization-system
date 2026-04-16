# ============================================================
# BUSINESS AI WORKER CONSENT RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines consent runtime.

consent_states:
- required
- presented
- accepted
- declined
- expired

rules:
- missing consent blocks active advisory runtime where disclaimer is required
- accepted consent may be version-scoped and time-scoped
