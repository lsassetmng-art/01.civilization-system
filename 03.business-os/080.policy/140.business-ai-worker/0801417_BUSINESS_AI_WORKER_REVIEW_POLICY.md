# ============================================================
# BUSINESS AI WORKER REVIEW POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines review policy.

rules:
- review-required states must be respected before risky output handoff
- AI workers may prepare review materials
- AI workers are not final human reviewers unless a separate narrow policy defines an exception
