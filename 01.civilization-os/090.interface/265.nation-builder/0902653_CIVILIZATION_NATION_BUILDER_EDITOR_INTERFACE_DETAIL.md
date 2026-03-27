# ============================================================
# CIVILIZATION NATION BUILDER EDITOR INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for zoning editor and market tier editor
inside CivilizationOS nation builder.


# ============================================================
# 1. ZONING EDITOR INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- zoning_editor_action
- correlation_id

zoning_editor_action examples:
- create_zone
- assign_zone
- update_company_type_rule
- update_site_type_rule
- update_restriction_rule
- validate_zoning_editor_state


# ============================================================
# 2. MARKET TIER EDITOR INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- market_tier_editor_action
- correlation_id

market_tier_editor_action examples:
- set_listing_style
- create_market_tier
- update_market_tier_rule
- update_company_type_eligibility
- validate_market_tier_editor_state


# ============================================================
# 3. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 4. FINAL INTERFACE RULE
# ============================================================

Nation builder editor interfaces must be:
- zoning-aware
- market-tier-aware
- validation-aware
- fail-closed compatible
