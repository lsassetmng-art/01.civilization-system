# ============================================================
# PLACEABLE INFRASTRUCTURE UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: placeable-infrastructure-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI BLOCKS
# ============================================================

ui_blocks:
- infrastructure_type_selector
- infrastructure_category_preview
- line_or_node_preview
- operator_class_selector
- authority_scope_type_selector
- placement_mode_selector
- approval_mode_selector
- replacement_mode_selector
- removal_mode_selector
- maintenance_mode_selector
- public_or_private_control_type_selector
- strategic_infrastructure_flag_selector
- cross_border_infrastructure_flag_selector


# ============================================================
# 2. FINAL RULE
# ============================================================

Placeable infrastructure enums
must be selectable and previewable
inside infrastructure management flows.
