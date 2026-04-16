# ============================================================
# BUSINESS AI WORKER CONSUMER APP SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements for consumer apps.

consumer_types:
- advisory apps
- execution work apps
- embedded app surfaces

rules:
- consumer apps must not own lending truth
- consumer apps must not bypass foundation controls
- consumer apps must identify activity mode explicitly
