# ============================================================
# BUSINESS AI WORKER RESERVATION FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the queue and reservation flow.

flow:
1. consumer app requests worker
2. no compatible free capacity is found
3. request is evaluated for queue eligibility
4. reservation record is created
5. queue position and estimated availability are returned
6. when capacity is released, reservation may be promoted
