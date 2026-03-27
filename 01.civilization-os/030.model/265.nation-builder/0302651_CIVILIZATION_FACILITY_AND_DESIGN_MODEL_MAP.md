# ============================================================
# CIVILIZATION FACILITY AND DESIGN MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for facility placement,
infrastructure placement, and facility design support
inside CivilizationOS nation builder.


# ============================================================
# 1. FACILITY FUNCTION / BASE STAT MODELS
# ============================================================

## FACILITY_TYPE
core_fields:
- facility_type_id
- facility_type_code
- facility_category
- placement_scope
- facility_status
- created_at
- updated_at

facility_category examples:
- national_core
- administration
- public_safety
- residence
- commerce
- industry
- military
- education
- health

placement_scope examples:
- nation
- region
- district
- capital_only

## FACILITY_BASE_STAT_PROFILE
core_fields:
- facility_base_stat_profile_id
- facility_type_id
- stat_code
- base_value
- profile_status
- effective_from
- effective_to
- created_at
- updated_at

## FACILITY_ALLOWED_BONUS_STAT
core_fields:
- facility_allowed_bonus_stat_id
- facility_type_id
- stat_code
- max_bonus_ratio
- rule_status
- created_at
- updated_at


# ============================================================
# 2. FACILITY DESIGN MODELS
# ============================================================

## FACILITY_DESIGN_PACKAGE
core_fields:
- facility_design_package_id
- supported_facility_type_id
- design_name
- provider_type
- provider_ref
- design_license_status
- is_paid_design
- visual_theme_code
- compatibility_summary
- design_status
- created_at
- updated_at

provider_type examples:
- system_company
- user_company
- ai_company

## FACILITY_DESIGN_BONUS_PROFILE
core_fields:
- facility_design_bonus_profile_id
- facility_design_package_id
- stat_code
- bonus_value
- bonus_status
- created_at
- updated_at

## FACILITY_DESIGN_RULE
core_fields:
- facility_design_rule_id
- facility_type_id
- max_total_bonus_ratio
- max_single_axis_bonus_ratio
- rule_status
- created_at
- updated_at


# ============================================================
# 3. FACILITY PLACEMENT MODELS
# ============================================================

## NATION_DRAFT_FACILITY_PLACEMENT
core_fields:
- nation_draft_facility_placement_id
- nation_draft_id
- facility_type_id
- facility_design_package_id
- region_ref
- district_ref
- placement_x
- placement_y
- rotation_code
- placement_status
- validation_status
- created_at
- updated_at

placement_status examples:
- placed
- moved
- removed
- suspended

## FACILITY_EFFECTIVE_STAT_SNAPSHOT
core_fields:
- facility_effective_stat_snapshot_id
- nation_draft_facility_placement_id
- stat_code
- base_value
- design_bonus_value
- effective_value
- snapshot_status
- snapped_at
- created_at

## FACILITY_PLACEMENT_VALIDATION_RECORD
core_fields:
- facility_placement_validation_record_id
- nation_draft_facility_placement_id
- validation_type
- validation_status
- validation_summary
- checked_at
- created_at

validation_type examples:
- placement_scope_check
- capital_requirement_check
- bonus_ratio_check
- design_compatibility_check
- required_support_check


# ============================================================
# 4. INFRASTRUCTURE MODELS
# ============================================================

## INFRASTRUCTURE_TYPE
core_fields:
- infrastructure_type_id
- infrastructure_type_code
- infrastructure_category
- connection_mode
- infrastructure_status
- created_at
- updated_at

infrastructure_category examples:
- rail
- air
- sea
- road
- utility
- communications

## INFRASTRUCTURE_BASE_STAT_PROFILE
core_fields:
- infrastructure_base_stat_profile_id
- infrastructure_type_id
- stat_code
- base_value
- profile_status
- effective_from
- effective_to
- created_at
- updated_at

## NATION_DRAFT_INFRASTRUCTURE_PLACEMENT
core_fields:
- nation_draft_infrastructure_placement_id
- nation_draft_id
- infrastructure_type_id
- region_ref
- district_ref
- placement_x
- placement_y
- topology_summary
- placement_status
- validation_status
- created_at
- updated_at

## INFRASTRUCTURE_CONNECTION_RECORD
core_fields:
- infrastructure_connection_record_id
- from_infrastructure_ref
- to_infrastructure_ref
- connection_type
- connection_status
- created_at
- updated_at

connection_type examples:
- rail_link
- road_link
- logistics_link
- utility_link
- service_link


# ============================================================
# 5. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for nation-builder facility and infrastructure placement.

Core summary:

- facility function is explicit
- base stats are DB-controlled
- design package is explicit
- design bonus rules are explicit
- placement instance is explicit
- effective stat snapshot is explicit
- infrastructure and topology are explicit
