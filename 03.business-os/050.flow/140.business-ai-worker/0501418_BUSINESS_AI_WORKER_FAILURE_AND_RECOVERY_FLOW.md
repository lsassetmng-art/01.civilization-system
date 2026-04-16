# ============================================================
# BUSINESS AI WORKER FAILURE AND RECOVERY FLOW
# ============================================================

status: canonical
layer: flow
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines failure and recovery flow.

failure_cases:
- no capacity
- disclaimer missing
- consent missing
- specialty mismatch
- world scope mismatch
- approval denied
- output handoff failure

recovery_paths:
- queue
- retry
- reroute
- escalate
- reject and close
