# ============================================================
# CIVIL SERVICE ELIGIBILITY TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-eligibility-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ELIGIBILITY STATES
# ============================================================

eligibility_states:
- eligible
- eligible_with_exam
- eligible_with_appointment
- eligible_with_loyalty_requirement
- eligible_with_clearance_requirement
- ineligible_non_human
- ineligible_disqualified
- ineligible_nation_rule_blocked


# ============================================================
# 2. FINAL RULE
# ============================================================

Civil service eligibility
must distinguish basic eligibility
from route-specific qualification requirements.
