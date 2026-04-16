# ============================================================
# FAILURE AND ROLLBACK FLOW
# ============================================================

flow:
execution failure or bad verification
-> rollback necessity determined
-> rollback source located
-> rollback policy checked
-> rollback executed if allowed
-> rollback verified
