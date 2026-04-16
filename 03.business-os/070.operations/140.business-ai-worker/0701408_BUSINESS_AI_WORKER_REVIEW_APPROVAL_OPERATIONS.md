# ============================================================
# BUSINESS AI WORKER REVIEW APPROVAL OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines review and approval handoff operations.

operational_targets:
- pending review backlog
- pending approval backlog
- handoff timeout detection
- rejected handoff investigation
- human finalizer visibility

rule:
AI-prepared material must remain traceable through human review and approval.
