# ============================================================
# PATRONAGE CORRUPTION AND CAPTURE MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: patronage-corruption-and-capture

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PATRONAGE TYPES
# ============================================================

patronage_types:
- office_for_loyalty
- contract_for_support
- family_advancement
- district_favor_exchange
- protection_network
- ruler_favor_distribution
- military_loyalty_reward
- doctrine_loyalty_reward
- business_access_reward


# ============================================================
# 2. CORRUPTION TYPES
# ============================================================

corruption_types:
- bribery
- procurement_rigging
- appointment_capture
- legislative_buying
- budget_diversion
- insider_information_trade
- regulatory_capture
- intimidation_capture
- protection_rent
- gift_culture_abuse


# ============================================================
# 3. CAPTURE FIELDS
# ============================================================

capture_fields:
- capture_id
- capture_type
- dominant_actor
- target_institution
- visibility_level
- normalization_level
- survivability_level
- enforcement_escape_strength
- public_resentment_risk


# ============================================================
# 4. FINAL RULE
# ============================================================

Patronage and corruption must define
not only whether they exist,
but whether the society treats them
as scandal, routine, privilege, or fear.
