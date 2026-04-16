# ============================================================
# BUSINESS AI WORKER ACTIVITY MODE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines activity-mode infrastructure.

activity_modes:
- embedded_app_routine_work
- advisory_consultation
- execution_work

components:
- activity-mode registry
- mode-specific routing support
