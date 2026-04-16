# ============================================================
# BUSINESS AI WORKER ACTIVITY MODE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines activity-mode implementation.

activity_modes:
- embedded_app_routine_work
- advisory_consultation
- execution_work

implementation_targets:
- mode-aware interface dispatch
- mode-aware policy gating
- mode-aware status handling
