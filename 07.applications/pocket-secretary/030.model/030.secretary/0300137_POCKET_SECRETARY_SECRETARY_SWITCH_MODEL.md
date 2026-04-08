# ============================================================
# POCKET SECRETARY SECRETARY SWITCH MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific secretary switch usage
based on the shared Secretary Switch Common model.

common reference:
PersonaOS secretary interaction common defines the shared switch structure.

PocketSecretary switch origins may include:
- home_character_tap
- settings
- onboarding
- promo_unlock

rules:
- secretary switch is a user preference event
- switching does not imply plan upgrade or authority change
