# ============================================================
# BUSINESS AI WORKER JOB LINKAGE FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines linkage flow between session and job.

examples:
- consultation -> improvement task
- consultation -> execution work order
- embedded support -> business workflow action
- execution work -> artifact handoff

rule:
Conversation-only and work-order flows must remain linkable but distinct.
