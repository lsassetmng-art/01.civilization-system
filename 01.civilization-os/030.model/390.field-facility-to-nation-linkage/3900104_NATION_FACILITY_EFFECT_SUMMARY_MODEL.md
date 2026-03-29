# ============================================================
# NATION FACILITY EFFECT SUMMARY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-facility-effect-summary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUMMARY FIELDS
# ============================================================

summary_fields:
- source_facility_event_type
- source_facility_type
- primary_nation_effect
- secondary_nation_effect_set
- visibility_class
- notice_recommended
- recalculation_recommended


# ============================================================
# 2. EXAMPLE SUMMARIES
# ============================================================

example_summaries:
- medical_service_facility opened -> health_access increased
- education_service_facility opened -> education_access increased
- station_service_facility opened -> transport_access increased
- national_securities_market_facility opened -> market_legibility increased
- civic_notice_board opened -> civic_visibility increased
- marketplace_facility opened -> commerce_access increased
- bank_facility opened -> finance_access increased
- recruitment_information_center opened -> recruitment_access increased


# ============================================================
# 3. FINAL RULE
# ============================================================

Every meaningful facility opening
should have a short nation-side explanation.
