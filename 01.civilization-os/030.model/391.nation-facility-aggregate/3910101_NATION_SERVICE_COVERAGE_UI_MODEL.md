# ============================================================
# NATION SERVICE COVERAGE UI MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-service-coverage-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COVERAGE SURFACES
# ============================================================

coverage_surfaces:
- nation_overview_coverage_panel
- nation_detail_coverage_panel
- nation_comparison_coverage_panel
- nation_builder_preview_coverage_panel


# ============================================================
# 2. COVERAGE DIMENSIONS
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
# 3. REQUIRED UI FIELDS
# ============================================================

required_ui_fields:
- nation_id
- coverage_dimension
- aggregate_score
- trend_state
- strongest_city_or_district
- weakest_city_or_district
- recent_change_summary
- source_facility_hint


# ============================================================
# 4. FINAL RULE
# ============================================================

Coverage UI must show
not only the score
but where the score is coming from.
