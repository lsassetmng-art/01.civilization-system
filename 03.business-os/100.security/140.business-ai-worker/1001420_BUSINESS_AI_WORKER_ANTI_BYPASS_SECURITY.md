# ============================================================
# BUSINESS AI WORKER ANTI BYPASS SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines anti-bypass protections.

rules:
- consumer apps must not bypass foundation lending controls
- protected consultation must not bypass disclaimer and consent
- review and approval gates must not be skipped by undocumented routes
