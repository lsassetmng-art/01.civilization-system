# ============================================================
# SUBMISSION FAILURE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for Pro submission failure.

rules:
- submission failure must be visible
- failure cause must be recordable
- retryable and non-retryable failure must be distinguishable
- failed submission must not imply approval reversal
