# ============================================================
# BUSINESS AI WORKER NOTIFICATION ROUTING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines routing architecture for notifications emitted by AI workers.

routing_targets:
- in-app notification
- email
- LINE
- Slack
- SMS

rule:
Routing uses common channel components.
Worker authority does not expand merely because a channel exists.
