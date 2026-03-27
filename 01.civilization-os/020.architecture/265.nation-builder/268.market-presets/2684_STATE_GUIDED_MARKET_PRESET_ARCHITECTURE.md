# ============================================================
# STATE GUIDED MARKET PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: market-preset
component: state-guided-market-preset

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This preset defines a state-guided market structure.

It is intended for nations where listing exists,
but state or nation authorities retain stronger influence
over review and market participation.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

listing_system_style:
state_guided_market

preset_summary:
A listing preset with stronger authority review,
state-guided discretion, and tighter strategic filtering.

state_involvement_posture:
high

review_posture:
strict_with_policy_discretion

threshold_strictness:
medium_to_high


# ============================================================
# 3. MARKET TIERS
# ============================================================

market_tiers:
- standard_market
- special_public_market

tier_ordering:
standard_market:
  rank: 1
special_public_market:
  rank: 2


# ============================================================
# 4. ELIGIBILITY POSTURE
# ============================================================

eligible_company_scope_posture:
narrow_and_policy_sensitive

typical_eligible_company_types:
- software_company
- education_company
- culture_arts_company
- retail_company

typical_excluded_or_discouraged:
- religious_corporation
- system_company
- authority-sensitive restricted entities


# ============================================================
# 5. THRESHOLD AXES
# ============================================================

threshold_axes:
- minimum_operating_period
- minimum_evaluation_score
- minimum_activity_score
- minimum_compliance_score
- minimum_disclosure_score

special_review_axes:
- strategic_alignment
- policy_compatibility
- national_priority_fit


# ============================================================
# 6. VALIDATION NOTES
# ============================================================

validation_notes:
- policy discretion must remain explicit
- company_type_eligibility must be defined clearly
- state-guided review must not silently bypass compliance floor
