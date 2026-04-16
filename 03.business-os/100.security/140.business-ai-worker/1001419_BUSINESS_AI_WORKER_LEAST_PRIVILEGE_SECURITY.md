# ============================================================
# BUSINESS AI WORKER LEAST PRIVILEGE SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines least-privilege requirements.

rules:
- grant the minimum authority necessary
- execution scopes must be narrow and explicit
- real-world or publication actions must use stricter privilege gates
