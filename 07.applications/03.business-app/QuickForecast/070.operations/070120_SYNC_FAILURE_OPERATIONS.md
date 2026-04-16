# ============================================================
# SYNC FAILURE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for synchronization failure.

rules:
- failed sync items must remain listed
- retry must be explicit or policy-driven
- local editability must remain where safe
- sync failure must not block unrelated local drafting
