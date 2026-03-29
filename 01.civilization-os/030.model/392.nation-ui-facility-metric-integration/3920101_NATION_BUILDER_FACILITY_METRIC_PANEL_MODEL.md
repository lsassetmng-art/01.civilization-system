# ============================================================
# NATION BUILDER FACILITY METRIC PANEL MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-builder-facility-metric-panel

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PANEL BLOCKS
# ============================================================

panel_blocks:
- service_coverage_summary
- infrastructure_summary
- market_legibility_summary
- civic_visibility_summary
- district_imbalance_summary
- projected_change_summary


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- current_metric_set
- projected_metric_set
- strongest_dimension
- weakest_dimension
- top_driver_facility_types
- missing_facility_hint_set
- warning_state


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation Builder must show
what the current nation looks like
and what the next build decision may change.
