# ============================================================
# NATION UI METRIC PLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-ui-facility-metric-integration
component: nation-ui-metric-placement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PLACEMENT RULES
# ============================================================

placement_rules:
- nation_builder shows current + projected metric panels
- nation_overview shows compact current metrics only
- nation_detail shows current + rollup + driver views
- nation_comparison shows normalized current metrics only
- nation_preview shows projected deltas only


# ============================================================
# 2. FINAL RULE
# ============================================================

Each UI surface must show
only the metric depth appropriate
to its decision context.
