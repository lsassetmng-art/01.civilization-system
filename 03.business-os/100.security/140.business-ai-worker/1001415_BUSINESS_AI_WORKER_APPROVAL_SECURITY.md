# ============================================================
# BUSINESS AI WORKER APPROVAL SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines approval security requirements.

controls:
- final approval authority remains human by default
- approval impersonation is prohibited
- approval bypass is prohibited unless explicitly allowed by narrow automation policy
