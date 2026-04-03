# ============================================================
# OPERATOR AND OWNERSHIP VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-placement-validation
component: operator-and-ownership-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VALIDATION CHECKS
# ============================================================

operator_and_ownership_checks:
- operator_class_allowed
- ownership_mode_allowed
- public_only_respected
- system_company_only_respected
- user_company_allowed_respected
- nation_body_requirement_respected
- city_body_requirement_respected


# ============================================================
# 2. FINAL RULE
# ============================================================

A valid facility type
must still fail placement
if the actor is not a valid operator.
