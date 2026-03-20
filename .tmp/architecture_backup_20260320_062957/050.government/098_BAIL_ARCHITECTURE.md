# ============================================================
# BAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Bail is conditional release before or during detention under national law.

bail_policy_modes:
- liberal
- restricted
- strict

decision_inputs:
- crime_type
- bail_amount
- loyalty
- repeat_offense_risk
- social_risk
- nation_type
- applicable_law

effects:
- social_stability_shift
- loyalty_shift
- crime_risk_shift

principles:
- bail is configurable by law
- bail is not universal
- state justice philosophy differs by nation type
