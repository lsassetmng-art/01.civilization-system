# ============================================================
# CROSS LAYER REFRESH MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-refresh

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REFRESH TARGETS
# ============================================================

refresh_targets:
- field_map_surface
- facility_overview_surface
- construction_status_surface
- nation_builder_surface
- nation_overview_surface
- nation_detail_surface
- nation_comparison_surface


# ============================================================
# 2. REFRESH RULES
# ============================================================

refresh_rules:
- field map refresh must preserve map context and filters
- nation builder refresh must preserve selected nation context
- nation detail refresh must preserve active drilldown if possible
- comparison refresh may defer until comparison surface is opened
- preview refresh must invalidate stale projections


# ============================================================
# 3. FINAL RULE
# ============================================================

Refresh must preserve user context
while surfacing meaningful state change.
