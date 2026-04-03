# ============================================================
# CIVILIZATION NATION ZONING MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for nation zoning
inside CivilizationOS.


# ============================================================
# 1. ZONE CORE MODELS
# ============================================================

## NATION_ZONE
core_fields:
- nation_zone_id
- nation_code
- zone_type
- region_ref
- district_ref
- zone_status
- created_at
- updated_at

zone_type examples:
- commercial_zone
- education_zone
- arts_zone
- religious_zone
- office_zone
- mixed_use_zone
- special_restricted_zone


# ============================================================
# 2. ALLOWANCE MODELS
# ============================================================

## NATION_ZONE_COMPANY_TYPE_RULE
core_fields:
- nation_zone_company_type_rule_id
- nation_zone_id
- company_type_code
- allowed_flag
- rule_status
- created_at
- updated_at

## NATION_ZONE_SITE_TYPE_RULE
core_fields:
- nation_zone_site_type_rule_id
- nation_zone_id
- site_type
- allowed_flag
- rule_status
- created_at
- updated_at


# ============================================================
# 3. RESTRICTION MODELS
# ============================================================

## NATION_ZONE_RESTRICTION_RULE
core_fields:
- nation_zone_restriction_rule_id
- nation_zone_id
- restriction_code
- restriction_value
- rule_status
- created_at
- updated_at

restriction_code examples:
- public_open_allowed
- late_night_operation_allowed
- high_traffic_event_allowed
- religious_activity_allowed
- screening_event_allowed
- exhibition_event_allowed


# ============================================================
# 4. COMPATIBILITY CHECK MODELS
# ============================================================

## NATION_ZONE_COMPATIBILITY_CHECK
core_fields:
- nation_zone_compatibility_check_id
- company_ref
- company_site_ref
- nation_zone_id
- requested_store_type
- compatibility_status
- compatibility_summary
- checked_at
- created_at

compatibility_status examples:
- passed
- failed
- unresolved
- restricted


# ============================================================
# 5. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for nation zoning inside CivilizationOS.

Core summary:

- zones are explicit
- allowed company types are explicit
- allowed site types are explicit
- restrictions are explicit
- compatibility checks are explicit
