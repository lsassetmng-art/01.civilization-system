# ============================================================
# NATION FACILITY COVERAGE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-facility-coverage

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COVERAGE DIMENSIONS
# ============================================================

coverage_dimensions:
- health_access
- education_access
- religion_access
- commerce_access
- finance_access
- recruitment_access
- transport_access
- civic_service_access
- market_information_access


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

nation_facility_coverage_fields:
- nation_id
- city_id_or_null
- district_id_or_null
- coverage_dimension
- source_facility_type
- source_facility_id
- contribution_mode
- contribution_weight
- active_flag
- effective_from


# ============================================================
# 3. CONTRIBUTION MODES
# ============================================================

contribution_modes:
- direct_additive
- anchor_weighted
- district_density_weighted
- visibility_weighted
- infrastructure_weighted


# ============================================================
# 4. FINAL RULE
# ============================================================

Coverage must be traceable
to actual facility presence,
not only abstract nation state.
