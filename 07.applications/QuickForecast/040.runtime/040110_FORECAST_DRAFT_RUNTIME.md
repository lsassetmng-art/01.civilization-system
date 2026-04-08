# ============================================================
# FORECAST DRAFT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how forecast drafts behave during runtime.

rules:
- drafts must be creatable quickly
- partial drafts must be saveable
- scenario switching must not destroy original assumption state
- forecast edits must remain reversible where practical
- local save must not imply enterprise acceptance
