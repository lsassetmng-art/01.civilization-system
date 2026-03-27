# ============================================================
# UNEMPLOYMENT DEBT AND BANKRUPTCY EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: risk-and-disruption-event-seed
component: unemployment-debt-and-bankruptcy-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- job_lost
- unstable_employment_started
- income_drop_detected
- debt_burden_escalated
- rent_nonpayment_risk_started
- household_asset_sale_started
- bankruptcy_or_equivalent_started
- recovery_support_applied
- household_break_risk_detected


# ============================================================
# 2. FINAL RULE
# ============================================================

Economic disruption events must reveal
how fast households fall,
and what institutional recovery exists.
