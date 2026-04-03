# ============================================================
# NATION BUILDER PHASE2 UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: nation-builder-phase2-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI BLOCKS
# ============================================================

ui_blocks:
- military_service_mode_selector
- conscription_mode_selector
- mobilization_mode_selector
- infrastructure_governance_mode_selector
- road_operator_mode_selector
- rail_operator_mode_selector
- station_operator_mode_selector
- port_operator_mode_selector
- nation_phase2_assignment_preview


# ============================================================
# 2. FINAL RULE
# ============================================================

Phase 2 enums
must be selectable and previewable
inside Nation Builder.
