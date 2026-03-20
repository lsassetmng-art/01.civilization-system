# ============================================================
# PLAYER INTERACTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player interaction is the explicit surface where the player expresses intent.

interaction_types:
- choose_action
- answer_exam
- apply
- confirm
- cancel
- review

rules:
- interaction does not directly mutate systemic state
- interaction must pass through validation and event layers
- no hidden critical actions
- no direct override of systemic simulation

integration_points:
- interface layer
- permission system
- event engine
- notification system

final_rule:
Player interaction is an intent surface, not a direct mutation surface.
