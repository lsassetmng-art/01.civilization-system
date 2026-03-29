# ============================================================
# NATION DETAIL FACILITY METRIC DRILLDOWN MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-detail-facility-metric-drilldown

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DRILLDOWN BLOCKS
# ============================================================

drilldown_blocks:
- full_service_coverage_table
- infrastructure_and_market_metric_table
- city_rollup_view
- district_rollup_view
- top_contributing_facilities
- recent_change_log
- missing_service_gaps


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation detail must allow users
to trace nation metrics
back to actual facility presence and gaps.
