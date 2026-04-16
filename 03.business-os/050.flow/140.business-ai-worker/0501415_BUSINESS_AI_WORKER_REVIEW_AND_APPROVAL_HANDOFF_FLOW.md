# ============================================================
# BUSINESS AI WORKER REVIEW AND APPROVAL HANDOFF FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines review and approval handoff flow.

flow:
1. worker prepares material
2. review-required state is entered if policy demands it
3. reviewer examines material
4. approval-required state is entered if final authorization is needed
5. human decision finalizes path
