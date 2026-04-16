# ============================================================
# BUSINESS AI WORKER OUTPUT HANDOFF FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines output handoff flow.

outputs:
- listing descriptions
- reports
- patch proposals
- test results
- advisory summaries

flow:
1. output is prepared
2. output is validated for handoff
3. review and approval are applied if needed
4. output is handed to target app or human receiver
