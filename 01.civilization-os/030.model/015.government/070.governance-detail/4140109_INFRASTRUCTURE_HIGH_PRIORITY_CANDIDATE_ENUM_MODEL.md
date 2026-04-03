# ============================================================
# INFRASTRUCTURE HIGH PRIORITY CANDIDATE ENUM MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: infrastructure-high-priority-candidate-enum

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HIGHEST PRIORITY ENUM GROUPS
# ============================================================

highest_priority_enum_groups:
- infrastructure_type
- line_or_node_type
- operator_class
- authority_scope_type
- placement_mode
- approval_mode
- public_or_private_control_type
- strategic_infrastructure_flag
- cross_border_infrastructure_flag


# ============================================================
# 2. FINAL RULE
# ============================================================

These enum groups
should be finalized first
because they affect
placement permission and governance behavior.
