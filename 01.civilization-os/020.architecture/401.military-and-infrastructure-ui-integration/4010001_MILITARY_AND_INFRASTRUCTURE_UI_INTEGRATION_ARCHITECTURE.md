# ============================================================
# MILITARY AND INFRASTRUCTURE UI INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI integration architecture
for military service policy
and infrastructure governance
inside Nation Builder and Field Map.

This architecture defines:

- nation type default display
- nation-specific override display
- military service control surfaces
- infrastructure governance control surfaces
- field-map execution surfaces
- preview and permission-aware UI behavior


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Policy design must become visible
at the point where users configure,
preview,
and execute actions.

Users must be able to understand:

- what the nation type default is
- what this specific nation overrides
- how conscription or enlistment behaves
- who may place roads, rail, stations, and ports
- what the current authority allows on the field map


# ============================================================
# 3. REQUIRED UI TARGETS
# ============================================================

required_ui_targets:
- nation_builder
- nation_overview
- nation_detail
- field_map
- military_facility_surface
- infrastructure_build_menu
- permission_feedback_surface


# ============================================================
# 4. FINAL RULE
# ============================================================

Military and infrastructure policy
must not remain hidden in abstract documents.
They must become visible
where the user actually decides and acts.
