# ============================================================
# CIVILIZATION NATION LISTING STYLE MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for nation-configurable listing style
inside CivilizationOS.


# ============================================================
# 1. NATION LISTING STYLE MODELS
# ============================================================

## NATION_LISTING_STYLE
core_fields:
- nation_listing_style_id
- nation_code
- listing_system_style
- multi_tier_enabled
- style_status
- created_at
- updated_at

listing_system_style examples:
- strict_public_market
- growth_market
- multi_tier_market
- state_guided_market
- hybrid_market


# ============================================================
# 2. MARKET TIER MODELS
# ============================================================

## NATION_MARKET_TIER
core_fields:
- nation_market_tier_id
- nation_code
- market_tier_code
- display_name
- tier_rank
- target_company_profile
- tier_status
- created_at
- updated_at

market_tier_code examples:
- prime_market
- standard_market
- growth_market
- venture_market
- regional_market
- special_public_market

## NATION_MARKET_TIER_RULE
core_fields:
- nation_market_tier_rule_id
- nation_market_tier_id
- minimum_operating_period_days
- minimum_evaluation_score
- minimum_activity_score
- minimum_compliance_score
- minimum_disclosure_score
- optional_scale_threshold_summary
- rule_status
- created_at
- updated_at


# ============================================================
# 3. LISTING ELIGIBILITY MODELS
# ============================================================

## COMPANY_TYPE_LISTING_ELIGIBILITY_RULE
core_fields:
- company_type_listing_eligibility_rule_id
- nation_code
- company_type_code
- listing_eligible_flag
- listing_restriction_summary
- rule_status
- created_at
- updated_at

## COMPANY_MARKET_TIER_READINESS_CHECK
core_fields:
- company_market_tier_readiness_check_id
- company_ref
- nation_market_tier_id
- check_type
- check_status
- measured_value
- required_value
- checked_at
- created_at

check_type examples:
- operating_period_check
- evaluation_score_check
- activity_score_check
- compliance_check
- disclosure_check
- scale_check


# ============================================================
# 4. POST-LISTING MODELS
# ============================================================

## COMPANY_MARKET_TIER_STATUS
core_fields:
- company_market_tier_status_id
- company_ref
- nation_market_tier_id
- tier_status
- effective_from
- effective_to
- created_at
- updated_at

tier_status examples:
- not_listed
- ready_for_review
- approved_for_listing
- listed
- suspended
- demoted
- delisted


# ============================================================
# 5. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for nation-configurable listing style inside CivilizationOS.

Core summary:

- nation listing style is explicit
- market tiers are explicit
- tier-specific rules are explicit
- company-type listing eligibility is explicit
- readiness checks are explicit
- post-listing status is explicit
