# ============================================================
# WORLD AND BUILDER OPERATIONS UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: world-and-builder-operations-ui-implementation
component: world-and-builder-operations-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for world and builder operations UI
inside Civilization.

This document must align with:

- WORLD_AND_BUILDER_OPERATIONS_ARCHITECTURE
- WORLD_AND_BUILDER_OPERATIONS_UI_INTERFACE
- STATE_BUILDER_UI_IMPLEMENTATION
- CITY_BUILDER_UI_IMPLEMENTATION


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

World and builder operations UI must implement:

- builder review queue
- state builder result review
- city builder result review
- map correction
- structure review
- world operations history visibility


# ============================================================
# 3. BUILDER REVIEW RULE
# ============================================================

Builder review queue must distinguish:

- state-builder items
- city-builder items
- blocked items
- review-hold items
- ready-for-decision items

Review actions must remain explicit
and traceable.


# ============================================================
# 4. RESULT DETAIL RULE
# ============================================================

State and city builder result detail
must expose:

- scope summary
- boundary summary
- validation posture
- conflict posture
- reviewer action posture

This UI must supervise builder outcome,
not replace builder UI itself.


# ============================================================
# 5. MAP CORRECTION RULE
# ============================================================

Map correction must remain high-impact.

The UI should support:

- target selection
- correction preview
- impact summary
- confirm correction
- cancel correction

Correction must not occur
as a side effect of navigation only.


# ============================================================
# 6. FINAL RULE
# ============================================================

World and builder operations UI implementation must remain:

- builder-supervisory
- map-aware
- correction-explicit
- impact-visible
- traceable
