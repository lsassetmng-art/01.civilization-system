# ============================================================
# BUSINESS AI WORKER APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines approval policy.

rules:
- final approval authority remains human by default
- AI workers may support approval preparation
- approval bypass is prohibited unless a separately defined automation policy explicitly allows it
