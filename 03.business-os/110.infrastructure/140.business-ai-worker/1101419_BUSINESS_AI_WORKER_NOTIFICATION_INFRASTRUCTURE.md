# ============================================================
# BUSINESS AI WORKER NOTIFICATION INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines notification infrastructure for worker events.

notification_events:
- granted
- queued
- promoted
- review_required
- approval_required
- handoff_ready
- failed
- released

rule:
Notification routing must use common channel components.
