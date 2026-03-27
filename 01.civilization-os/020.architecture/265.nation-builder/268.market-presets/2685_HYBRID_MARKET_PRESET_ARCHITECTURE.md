# ============================================================
# HYBRID MARKET PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: market-preset
component: hybrid-market-preset

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This preset defines a hybrid market structure.

It is intended for nations that want a balanced combination
of public market discipline, growth access, and moderate flexibility.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

listing_system_style:
hybrid_market

preset_summary:
A listing preset combining moderate public-market structure
with selective growth-market openness.

state_involvement_posture:
moderate

review_posture:
moderate_structured

threshold_strictness:
medium


# ============================================================
# 3. MARKET TIERS
# ============================================================

market_tiers:
- standard_market
- growth_market
- venture_market

tier_ordering:
standard_market:
  rank: 1
growth_market:
  rank: 2
venture_market:
  rank: 3


# ============================================================
# 4. ELIGIBILITY POSTURE
# ============================================================

eligible_company_scope_posture:
balanced

typical_eligible_company_types:
- retail_company
- education_company
- game_company
- software_company
- culture_arts_company
- investment_company

typical_excluded_or_discouraged:
- religious_corporation
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

threshold_bias:
balanced_between_access_and_quality


# ============================================================
# 6. VALIDATION NOTES
# ============================================================

validation_notes:
- standard tier should remain stricter than growth and venture tiers
- review logic must remain explicit
- hybrid configuration must not create rank ambiguity
