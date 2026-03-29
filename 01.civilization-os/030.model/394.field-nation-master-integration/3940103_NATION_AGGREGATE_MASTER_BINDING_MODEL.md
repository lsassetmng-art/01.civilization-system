# ============================================================
# NATION AGGREGATE MASTER BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-master-integration
component: nation-aggregate-master-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines master bindings
for nation aggregate metrics derived from facilities.


# ============================================================
# 2. REQUIRED BINDINGS
# ============================================================

required_bindings:
- coverage_dimension -> nation_master
- aggregate_metric -> civilization_society_matrix_extension
- facility_effect_summary -> nation_preview_binding
- city_district_rollup -> nation_detail_binding
- projected_delta -> nation_builder_preview_binding


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation aggregate metrics
must be attachable to nation-facing master structures
without redefining the nation itself.
