# ============================================================
# SYNC AND SUBMISSION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines synchronization and governed submission runtime.

rules:
- Basic has no enterprise submission runtime
- Pro may synchronize and submit
- pending items must be explicitly state-tracked
- retryable failure and terminal failure must be distinguishable
- user-visible status must remain explicit
