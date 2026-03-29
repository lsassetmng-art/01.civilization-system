# ============================================================
# NATION INFRASTRUCTURE AND MARKET METRIC MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-infrastructure-and-market-metric

owner: Boss
prepared_by: Zero


# ============================================================
# 1. METRIC DIMENSIONS
# ============================================================

metric_dimensions:
- infrastructure_score
- market_legibility
- civic_visibility
- district_development
- urban_service_density
- national_prestige
- stability_signal


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- metric_dimension
- aggregate_value
- trend_state
- primary_driver_summary
- last_updated_at
- source_event_count


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation metrics must remain explainable
through visible facility and district change.
