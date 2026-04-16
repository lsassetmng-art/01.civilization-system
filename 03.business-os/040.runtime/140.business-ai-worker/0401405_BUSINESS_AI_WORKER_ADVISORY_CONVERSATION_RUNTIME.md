# ============================================================
# BUSINESS AI WORKER ADVISORY CONVERSATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines advisory conversation runtime.

session_states:
- pending_disclaimer
- pending_consent
- ready
- active
- escalated
- completed
- closed

rules:
- high-risk consultation cannot enter active before disclaimer and consent
- advisory session may escalate to human or specialized route
- advisory session may create downstream task or work order
