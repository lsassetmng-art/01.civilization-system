# ============================================================
# MAP VISUAL REFLECTION DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: map-visual-reflection-detail
component: map-visual-reflection-detail

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for detailed map and visual reflection policy
inside Civilization.

This document covers:

- reflection priority
- visible-area differential update
- congestion reflection
- disaster reflection
- facility and infrastructure state reflection
- actor density reflection

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

World-visible layers
must reflect simulation truth
through explicit reflection families.

# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- REFLECTION_PRIORITY_ARCHITECTURE
- VISIBLE_AREA_DIFFERENTIAL_UPDATE_ARCHITECTURE
- CONGESTION_AND_DENSITY_REFLECTION_ARCHITECTURE
- DISASTER_AND_FAILURE_REFLECTION_ARCHITECTURE

# ============================================================
# 4. FINAL RULE
# ============================================================

Map visual reflection detail architecture must remain:

- truth-linked
- visibility-aware
- differential-update-aware
- disaster-aware
