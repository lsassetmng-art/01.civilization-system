# ============================================================
# BUILDER VALUE CANDIDATE IMPLEMENTATION ORDER MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: builder-value-candidate-implementation-order

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED ORDER
# ============================================================

recommended_order:
- nation_builder_high_priority_enum_groups
- company_builder_high_priority_enum_groups
- city_builder_high_priority_enum_groups
- placeable_infrastructure_high_priority_enum_groups
- placeable_facility_candidate_master_normalization


# ============================================================
# 2. FINAL RULE
# ============================================================

Value candidate implementation
should prioritize
systems that influence
multiple builders and permissions first.
