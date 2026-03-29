# ============================================================
# FACILITY DICTIONARY MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: facility-dictionary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

facility_dictionary_fields:
- facility_type
- facility_name
- facility_group
- operator_class
- service_family
- entry_class
- buildable_flag
- view_only_flag
- tenant_container_flag
- overview_first_flag
- direct_use_flag
- builder_entry_supported
- management_supported
- canonical_ui_target
- required_zoning_tags
- forbidden_zoning_tags
- placement_scale
- ownership_mode


# ============================================================
# 2. OWNERSHIP MODES
# ============================================================

ownership_modes:
- public_only
- nation_only
- city_only
- system_company_only
- user_company_allowed
- mixed_allowed
- no_ownership_view_only


# ============================================================
# 3. PLACEMENT SCALES
# ============================================================

placement_scales:
- small_lot
- medium_lot
- large_lot
- district_anchor
- city_anchor
- non_placeable_view_object


# ============================================================
# 4. FINAL RULE
# ============================================================

Each facility must have one dictionary definition
that stays stable across map, build, and service logic.
