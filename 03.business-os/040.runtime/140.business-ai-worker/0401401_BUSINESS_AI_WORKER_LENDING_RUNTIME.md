# ============================================================
# BUSINESS AI WORKER LENDING RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the lending runtime lifecycle.

lending_states:
- requested
- granted
- queued
- active
- released
- expired
- rejected

rules:
- if capacity exists and policy passes, request becomes granted
- if capacity does not exist and queue is allowed, request becomes queued
- if request is invalid, request becomes rejected
- granted lending becomes active on actual session or work start
- active lending must end in released or expired
