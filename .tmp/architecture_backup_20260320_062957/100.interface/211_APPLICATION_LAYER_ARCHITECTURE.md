# ============================================================
# APPLICATION LAYER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Application layer organizes user journeys and feature entry points
across all domains.

responsibilities:
- route users to relevant flows
- group functions by purpose
- present actionable context
- invoke explicit intent submission

major_surfaces:
- life_surface
- economy_surface
- government_surface
- law_surface
- security_surface
- war_surface
- history_surface

rules:
- application layer must not contain hidden business rules
- routing decisions must not mutate domain state
- unavailable actions must be visibly disabled or rejected explicitly

final_rule:
Application layer is a navigation and intent gateway,
not a state mutation layer.
