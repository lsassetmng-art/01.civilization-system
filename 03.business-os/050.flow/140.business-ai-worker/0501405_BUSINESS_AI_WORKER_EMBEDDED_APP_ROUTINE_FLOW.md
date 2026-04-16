# ============================================================
# BUSINESS AI WORKER EMBEDDED APP ROUTINE FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines flow for routine work inside first-party apps.

examples:
- expense assistance
- invoicing assistance
- CRM assistance
- project assistance
- MBO assistance

flow:
1. embedded app surface requests worker
2. foundation web grants or queues request
3. worker assists inside app workflow
4. result is reflected in app context
5. session ends and worker is released
