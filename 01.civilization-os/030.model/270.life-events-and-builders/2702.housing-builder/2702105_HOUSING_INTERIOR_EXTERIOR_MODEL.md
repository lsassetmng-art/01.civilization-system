# ============================================================
# HOUSING INTERIOR EXTERIOR MODEL
# ============================================================

status: canonical
layer: model
scope: housing-builder
component: housing-interior-exterior

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DESIGN FAMILIES
# ============================================================

Supported families:
- exterior_design
- interior_design
- room_layout
- equipment_selection
- furniture_placement


# ============================================================
# 2. FINAL RULE
# ============================================================

Housing design must treat interior and exterior
as first-class selectable components.
