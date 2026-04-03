# ============================================================
# CITY CENTER PLACEMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: city-builder-rename
component: city-center-placement-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RULES
# ============================================================

rules:
- city centers are placed through City Builder, not Nation Builder
- Nation Builder may define whether capital tiers exist
- City Builder determines concrete map placement of city centers
- prefectural capitals and regional capitals may be placed as urban core objects
- city center placement should connect naturally with housing, civic, and transport structure


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation Builder defines existence and hierarchy.
City Builder defines actual location and layout.
