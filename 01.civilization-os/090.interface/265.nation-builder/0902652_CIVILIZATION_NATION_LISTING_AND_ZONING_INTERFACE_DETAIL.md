# ============================================================
# CIVILIZATION NATION LISTING AND ZONING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for nation listing style and zoning
inside CivilizationOS.


# ============================================================
# 1. LISTING STYLE INTERFACE
# ============================================================

required_fields:
- nation_code
- listing_style_action
- correlation_id

listing_style_action examples:
- set_listing_system_style
- create_market_tier
- update_market_tier_rule
- update_company_type_listing_eligibility


# ============================================================
# 2. COMPANY LISTING READINESS INTERFACE
# ============================================================

required_fields:
- company_ref
- target_market_tier_ref
- listing_action
- correlation_id

listing_action examples:
- evaluate_readiness
- submit_listing_application
- approve_listing
- reject_listing
- set_listed_status


# ============================================================
# 3. ZONING INTERFACE
# ============================================================

required_fields:
- nation_code
- zoning_action
- correlation_id

zoning_action examples:
- create_zone
- update_zone
- set_company_type_rule
- set_site_type_rule
- set_restriction_rule
- activate_zone
- deactivate_zone


# ============================================================
# 4. ZONING COMPATIBILITY INTERFACE
# ============================================================

required_fields:
- company_ref
- company_site_ref
- nation_zone_ref
- requested_store_type
- correlation_id


# ============================================================
# 5. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 6. FINAL INTERFACE RULE
# ============================================================

Nation listing and zoning interfaces in CivilizationOS must be:
- style-aware
- market-tier-aware
- zone-aware
- restriction-aware
- compatibility-aware
