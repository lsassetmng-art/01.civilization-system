# ============================================================
# HOUSING PURCHASE MODEL
# ============================================================

status: canonical
layer: model
scope: housing-builder
component: housing-purchase

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- listing_selected
- purchase_eligibility_checked
- financing_checked_if_applicable
- transaction_mediated
- ownership_transferred
- move_in_ready


# ============================================================
# 2. FINAL RULE
# ============================================================

Housing purchase must follow real-estate mediation rules.
