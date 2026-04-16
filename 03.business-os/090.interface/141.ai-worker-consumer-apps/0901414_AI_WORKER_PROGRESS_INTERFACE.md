# ============================================================
# AI WORKER PROGRESS INTERFACE
# ============================================================

status: canonical
layer: interface
domain: ai-worker-consumer-apps
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines progress and status interface for execution work.

statuses:
- queued
- assigned
- in_progress
- review_required
- awaiting_approval
- completed
- rejected
- failed
