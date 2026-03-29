# ============================================================
# MILITARY AND INFRASTRUCTURE PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW CONTEXTS
# ============================================================

preview_contexts:
- nation_builder_preview
- military_policy_preview
- infrastructure_governance_preview
- field_map_build_preview
- permission_preview


# ============================================================
# 2. PREVIEW THEMES
# ============================================================

preview_themes:
- likely_conscription_behavior
- likely_volunteer_bias
- likely_compliance_profile
- likely_infrastructure_operator_mix
- likely_public_vs_private_control
- likely_field_map_available_actions


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview must help users understand
how policy becomes action
before they commit changes.
