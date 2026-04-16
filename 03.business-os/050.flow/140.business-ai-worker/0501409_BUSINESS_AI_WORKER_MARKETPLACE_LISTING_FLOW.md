# ============================================================
# BUSINESS AI WORKER MARKETPLACE LISTING FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines listing work flow for marketplace-type execution.

targets:
- marketplace
- yahoo auctions
- mercari

flow:
1. listing work request is created
2. worker with listing specialty is selected
3. listing draft, title, description, and supporting output are prepared
4. review or approval is performed if required
5. publish handoff is executed or queued for human approval
