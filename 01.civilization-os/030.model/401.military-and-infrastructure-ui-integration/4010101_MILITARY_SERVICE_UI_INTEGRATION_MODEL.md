# ============================================================
# MILITARY SERVICE UI INTEGRATION MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-service-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NATION BUILDER SURFACES
# ============================================================

nation_builder_surfaces:
- military_service_policy_panel
- conscription_mode_panel
- mobilization_posture_panel
- loyalty_and_compliance_effect_panel
- nation_type_default_vs_override_panel


# ============================================================
# 2. FIELD MAP SURFACES
# ============================================================

field_map_surfaces:
- military_facility_entry
- recruitment_and_notice_entry
- intake_and_assignment_entry
- mobilization_notice_surface


# ============================================================
# 3. DISPLAY RULES
# ============================================================

display_rules:
- nation builder must show type default and nation override separately
- field map must expose recruitment or intake only where current nation policy allows
- forced service routes must not be displayed as voluntary routes
- voluntary enlistment routes must remain visible where supported
- military facility execution surfaces must respect permission and policy state


# ============================================================
# 4. FINAL RULE
# ============================================================

Military service UI
must show both sovereign rule
and practical execution route.
