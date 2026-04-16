# ============================================================
# BILLING EVENT AUDIT FLOW
# ============================================================

flow:
billing-relevant event occurs
-> state before resolved
-> event classified
-> resulting state resolved
-> audit record created
-> history becomes reviewable
