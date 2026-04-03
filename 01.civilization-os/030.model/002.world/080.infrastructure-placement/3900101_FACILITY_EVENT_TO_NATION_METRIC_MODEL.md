# ============================================================
# FACILITY EVENT TO NATION METRIC MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: facility-event-to-nation-metric

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LINKABLE EVENT TYPES
# ============================================================

linkable_event_types:
- facility_opened
- facility_suspended
- facility_removed
- facility_replaced
- anchor_facility_opened
- infrastructure_facility_opened
- market_board_opened
- civic_facility_opened
- education_complex_opened
- medical_complex_opened


# ============================================================
# 2. NATION METRIC TARGETS
# ============================================================

nation_metric_targets:
- service_coverage_health
- service_coverage_education
- service_coverage_religion
- service_coverage_commerce
- service_coverage_finance
- service_coverage_recruitment
- service_coverage_transport
- market_legibility
- civic_visibility
- infrastructure_score
- district_development
- urban_service_density
- national_prestige
- stability_signal


# ============================================================
# 3. FINAL RULE
# ============================================================

Only meaningful facility lifecycle events
should alter nation aggregated metrics.
