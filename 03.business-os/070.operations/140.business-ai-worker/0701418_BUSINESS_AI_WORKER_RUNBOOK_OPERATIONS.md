# ============================================================
# BUSINESS AI WORKER RUNBOOK OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines runbook expectations for operators.

runbook_topics:
- queue stuck
- slot locked
- release failed
- handoff failed
- consent missing in protected advisory
- urgent administrative override
