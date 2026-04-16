# ============================================================
# BUSINESS AI WORKER ACTIVITY MODE SECURITY
# ============================================================

status: canonical
layer: security
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines security boundaries by activity mode.

activity_modes:
- embedded_app_routine_work
- advisory_consultation
- execution_work

rule:
Each activity mode may have different authorization and review requirements.
