# ============================================================
# GROWTH MARKET PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: market-preset
component: growth-market-preset

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This preset defines a growth-oriented public market structure.

It is intended for nations that want emerging companies
to access listing earlier under managed conditions.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

listing_system_style:
growth_market

preset_summary:
A listing preset prioritizing emerging company access,
growth potential, and moderate review discipline.

state_involvement_posture:
low_to_moderate

review_posture:
moderate

threshold_strictness:
medium


# ============================================================
# 3. MARKET TIERS
# ============================================================

market_tiers:
- growth_market
- venture_market

tier_ordering:
growth_market:
  rank: 1
venture_market:
  rank: 2


# ============================================================
# 4. ELIGIBILITY POSTURE
# ============================================================

eligible_company_scope_posture:
broad_for_growth

typical_eligible_company_types:
- software_company
- game_company
- culture_arts_company
- education_company
- retail_company

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
growth_friendly_but_reviewed


# ============================================================
# 6. VALIDATION NOTES
# ============================================================

validation_notes:
- growth tiers must still retain explicit compliance floor
- disclosure requirement may be lighter than strict public market
- review logic must not collapse into auto-listing
