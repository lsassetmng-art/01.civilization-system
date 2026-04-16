# ============================================================
# BUSINESS AI WORKER PROGRESS RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines progress tracking runtime.

progress_statuses:
- queued
- assigned
- in_progress
- blocked
- review_required
- awaiting_approval
- completed
- failed

rule:
Progress visibility must be exposed to consumer applications.
