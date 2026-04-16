# ============================================================
# BUSINESS AI WORKER FAILURE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines failure runtime.

failure_cases:
- no_capacity
- consent_missing
- disclaimer_required
- specialty_mismatch
- world_scope_mismatch
- approval_denied
- output_handoff_failed

rule:
Failures must be visible in usage log and operational monitoring.
