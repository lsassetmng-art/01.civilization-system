# ============================================================
# MULTI TIER MARKET PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: market-preset
component: multi-tier-market-preset

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This preset defines a layered multi-tier market structure.

It is intended for nations that want multiple listing paths
with clear gradation in quality and scale expectations.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

listing_system_style:
multi_tier_market

preset_summary:
A listing preset with multiple market layers ranging
from high-standard tiers to growth-oriented tiers.

state_involvement_posture:
moderate

review_posture:
structured

threshold_strictness:
medium_to_high


# ============================================================
# 3. MARKET TIERS
# ============================================================

market_tiers:
- prime_market
- standard_market
- growth_market
- venture_market

tier_ordering:
prime_market:
  rank: 1
standard_market:
  rank: 2
growth_market:
  rank: 3
venture_market:
  rank: 4


# ============================================================
# 4. ELIGIBILITY POSTURE
# ============================================================

eligible_company_scope_posture:
broad_structured

typical_eligible_company_types:
- retail_company
- investment_company
- education_company
- game_company
- software_company
- culture_arts_company

typical_excluded_or_discouraged:
- religious_corporation
- system_company
- public_interest_corporation


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
- optional_capitalization_threshold

tier_behavior_summary:
Higher tiers require stronger disclosure, compliance,
and maturity. Lower tiers remain accessible but reviewed.


# ============================================================
# 6. VALIDATION NOTES
# ============================================================

validation_notes:
- rank uniqueness is mandatory
- threshold ordering must remain monotonic by tier rank
- higher tiers must not be easier than lower tiers
