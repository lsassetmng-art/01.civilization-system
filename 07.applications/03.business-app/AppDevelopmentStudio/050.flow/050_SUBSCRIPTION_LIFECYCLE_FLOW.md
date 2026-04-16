# ============================================================
# SUBSCRIPTION LIFECYCLE FLOW
# ============================================================

flow:
paid subscription active
-> renewal due
-> renewal succeeds or fails
-> if fails then grace period or expiry handling
-> if cancelled then pending-expiry period
-> current period ends
-> expired or resumed
