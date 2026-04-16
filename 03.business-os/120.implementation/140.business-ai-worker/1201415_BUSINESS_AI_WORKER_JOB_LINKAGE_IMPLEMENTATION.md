# ============================================================
# BUSINESS AI WORKER JOB LINKAGE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation of linkage between session and job.

linkage_targets:
- advisory session to task
- advisory session to work order
- embedded app session to workflow action
- execution work to output handoff
