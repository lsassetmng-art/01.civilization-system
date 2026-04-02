# ============================================================
# STRICT PUBLIC MARKET PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: market-preset
component: strict-public-market-preset

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This preset defines a strict public market structure.

It is intended for nations that want conservative,
high-standard, tightly reviewed listing environments.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

listing_system_style:
strict_public_market

preset_summary:
A listing preset with strict review discipline,
higher quality thresholds, and narrower eligibility.

state_involvement_posture:
moderate

review_posture:
strict

threshold_strictness:
high


# ============================================================
# 3. MARKET TIERS
# ============================================================

market_tiers:
- prime_market
- standard_market

tier_ordering:
prime_market:
  rank: 1
standard_market:
  rank: 2


# ============================================================
# 4. ELIGIBILITY POSTURE
# ============================================================

eligible_company_scope_posture:
narrow_to_moderate

typical_eligible_company_types:
- retail_company
- investment_company
- software_company
- education_company
- culture_arts_company

typical_excluded_or_discouraged:
- religious_corporation
- public_interest_corporation
- system_company


# ============================================================
# 5. THRESHOLD AXES
# ============================================================

threshold_axes:
- minimum_operating_period
- minimum_evaluation_score
- minimum_activity_score
- minimum_compliance_score
- minimum_disclosure_score
- optional_scale_threshold


# ============================================================
# 6. VALIDATION NOTES
# ============================================================

validation_notes:
- at least one higher-rank tier must exist
- duplicate market rank prohibited
- disclosure and compliance thresholds should not be omitted
