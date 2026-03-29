# ============================================================
# FACILITY PLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: facility-placement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

placement_rule_fields:
- facility_type
- buildable_flag
- placement_scale
- minimum_lot_requirement
- adjacency_preferences
- adjacency_restrictions
- infrastructure_requirements
- nation_restriction_profile
- city_restriction_profile
- operator_restriction_profile
- review_required_before_build
- replace_existing_supported


# ============================================================
# 2. PLACEMENT RULE EXAMPLES
# ============================================================

placement_rule_examples:
- marketplace_facility requires commerce-compatible lot
- bank_facility prefers commerce or finance lot
- securities_company_facility prefers finance lot
- national_securities_market_facility prefers district_anchor or city_anchor
- major_medical_complex requires large_lot or district_anchor
- mixed_service_building requires mixed_use_compatible lot
- recruitment_information_board may be non_placeable_view_object or civic placement


# ============================================================
# 3. FINAL RULE
# ============================================================

Placement rules must answer
where a facility may exist,
not only what it does.
