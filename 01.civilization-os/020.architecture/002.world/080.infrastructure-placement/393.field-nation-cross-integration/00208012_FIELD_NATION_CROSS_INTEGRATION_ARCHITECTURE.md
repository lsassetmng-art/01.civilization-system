# ============================================================
# FIELD NATION CROSS INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-nation-cross-integration
component: field-nation-cross-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical cross-integration architecture
between:

- Field Map
- Facility Build and Placement
- Nation Aggregation
- Nation Builder
- Nation Overview and Detail
- Nation Comparison and Preview

This architecture defines
how local facility actions become
nation-scale visible effects.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Local construction and nation aggregation
must remain separate layers,
but they must connect through
stable and explainable pipelines.

The system must make it possible to answer:

- what facility changed
- where it changed
- which nation metrics changed
- where the change is visible in UI
- what preview should have shown beforehand


# ============================================================
# 3. REQUIRED CROSS PATHS
# ============================================================

required_cross_paths:
- field_map_to_build_validation
- build_validation_to_build_execution
- build_execution_to_facility_state
- facility_state_to_nation_linkage
- nation_linkage_to_nation_aggregate
- nation_aggregate_to_nation_ui
- nation_preview_back_to_field_action


# ============================================================
# 4. FINAL RULE
# ============================================================

Cross integration must preserve
traceability from one facility action
to one nation-visible consequence chain.
