# ============================================================
# FIELD MAP POLICY TO ACTION BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: field-map-policy-to-action-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDING THEMES
# ============================================================

binding_themes:
- military_policy_to_recruitment_entry
- military_policy_to_intake_entry
- mobilization_policy_to_notice_surface
- infrastructure_policy_to_build_menu
- infrastructure_policy_to_line_node_options
- permission_policy_to_visibility_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Field map options
must be derived from policy and authority,
not hardcoded independently.
