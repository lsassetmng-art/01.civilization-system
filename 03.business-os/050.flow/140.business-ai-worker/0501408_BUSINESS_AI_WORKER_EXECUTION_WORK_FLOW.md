# ============================================================
# BUSINESS AI WORKER EXECUTION WORK FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines standard execution work flow.

examples:
- marketplace listing work
- yahoo auctions listing work
- mercari listing work
- night maintenance work
- bug fix support
- testing work

flow:
1. execution work app requests worker
2. worker is granted or queued
3. work order is created or linked
4. conversation and job progress proceed together
5. outputs are prepared
6. review and approval steps occur if needed
7. output handoff is completed
8. worker is released
