# ============================================================
# BUSINESS AI WORKER FAILURE RECOVERY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines failure recovery operations.

recovery_targets:
- no-capacity situations
- stale queue situations
- failed handoff situations
- specialty mismatch routing failures
- world-scope mismatch failures
- release failures

recovery_methods:
- retry
- reroute
- manual intervention
- administrative release
- reject and close
