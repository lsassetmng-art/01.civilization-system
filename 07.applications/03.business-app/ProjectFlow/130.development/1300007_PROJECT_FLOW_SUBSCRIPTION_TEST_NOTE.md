# ============================================================
# PROJECT FLOW SUBSCRIPTION TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines test points for subscription, trial, and read-only behavior.

test_points:
- trial_active grants full feature access
- trial expiry transitions to unpaid_read_only when payment is invalid
- subscribed_active restores blocked actions
- unpaid_read_only still allows viewing
- unpaid_read_only blocks all mutation and generation actions
- blocked actions remain visible
- smartphone and pc show the same action availability
- read-only banner appears consistently
- no data is deleted on trial expiry
