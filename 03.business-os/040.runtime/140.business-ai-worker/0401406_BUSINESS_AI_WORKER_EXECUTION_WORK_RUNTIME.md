# ============================================================
# BUSINESS AI WORKER EXECUTION WORK RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines execution work runtime.

work_states:
- drafted
- assigned
- in_progress
- review_required
- awaiting_approval
- handoff_ready
- completed
- failed
- cancelled

rules:
- execution work may require review before completion
- execution work may require approval before external publication or risky action
