
# ============================================================
# ESTIMATE DELIVERY AUDIT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Implementation rules:

- each resend should be a new delivery record or explicit delivery transition
- do not overwrite prior delivered artifact meaning
- opened events should append log history
- response recording should bind to delivery basis explicitly
- expired/revoked states should remain queryable for audit and UI

