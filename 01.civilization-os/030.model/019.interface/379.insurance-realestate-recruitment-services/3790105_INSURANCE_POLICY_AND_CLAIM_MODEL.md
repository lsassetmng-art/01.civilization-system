# ============================================================
# INSURANCE POLICY AND CLAIM MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: insurance-policy-and-claim

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POLICY TYPES
# ============================================================

policy_types:
- housing_policy
- health_policy
- life_policy
- travel_policy
- business_policy
- cargo_or_asset_policy
- event_policy


# ============================================================
# 2. CLAIM TYPES
# ============================================================

claim_types:
- information_request
- support_request
- formal_claim
- renewal_request
- change_request


# ============================================================
# 3. FINAL RULE
# ============================================================

Insurance service must distinguish
between viewing coverage,
holding coverage,
and claiming against coverage.
