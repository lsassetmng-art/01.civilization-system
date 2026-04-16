# ============================================================
# POCKET SECRETARY DEEP LINK LAUNCH IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for Deep Link launch
of EstimateCreator and NameCardManager.

implementation directions:
- provide clear launch entries for EstimateCreator and NameCardManager
- prepare bounded launch parameters only
- hand off authenticated BusinessOS context
- distinguish launch result from business result
- show install guidance when the target app is unavailable
- keep PocketSecretary separate from external app authoring ownership

rules:
- launch handling must remain explicit
- unavailable app detection must route to install guidance UI
- valid inherited context should bypass normal re-login only
- target app must still perform authorization checks
