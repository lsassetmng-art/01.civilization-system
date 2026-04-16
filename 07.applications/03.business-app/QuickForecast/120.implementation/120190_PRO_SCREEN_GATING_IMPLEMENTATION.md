# ============================================================
# PRO SCREEN GATING IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for Pro-only screen gating.

pro_only_screens:
- pro_approval_submission
- share_target

rules:
- route guard is required
- UI-only hiding is insufficient
- unsupported navigation must fail safely
- Pro downgrade state must not expose stale governed controls
