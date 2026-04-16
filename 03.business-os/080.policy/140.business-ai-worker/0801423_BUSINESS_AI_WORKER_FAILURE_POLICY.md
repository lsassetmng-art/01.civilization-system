# ============================================================
# BUSINESS AI WORKER FAILURE POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines failure policy.

failure_cases:
- no_capacity
- disclaimer_required
- consent_missing
- specialty_mismatch
- world_scope_mismatch
- approval_denied
- publication_not_allowed

rules:
- failures must be explicit
- recoverable failures may queue, retry, or reroute
- non-recoverable failures must reject clearly
