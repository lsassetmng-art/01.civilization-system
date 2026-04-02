# ============================================================
# FIELD FACILITY COST DISPLAY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-cost-display-ui
component: field-facility-cost-display-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for displaying evaluated facility cost,
maintenance,
build time,
activation delay,
and modifier explanations
inside Civilization.

This architecture covers:

- build menu
- facility detail and overview
- build confirmation
- construction status
- field map quick info
- builder-side summary panels


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

UI must display evaluated values,
not raw master values,
when a concrete lot, operator, nation,
and city context already exist.

The user must be able to see:

- base values
- final values
- important modifiers
- why a value changed
- when a facility becomes usable


# ============================================================
# 3. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- build_menu_card
- facility_candidate_detail
- build_confirmation_surface
- construction_status_surface
- field_map_quick_info
- builder_summary_panel
- modifier_breakdown_surface


# ============================================================
# 4. FINAL RULE
# ============================================================

Display must make cost and time
predictable enough
that placement decisions feel informed,
not hidden.
