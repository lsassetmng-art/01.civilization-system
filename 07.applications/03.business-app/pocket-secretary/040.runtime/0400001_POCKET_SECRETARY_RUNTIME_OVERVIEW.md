# ============================================================
# POCKET SECRETARY RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific runtime behavior.

shared common references:
- PersonaOS Consultation Common runtime
- PersonaOS Secretary Interaction Common runtime
- PersonaOS Notification Common runtime
- PersonaOS Background Common runtime
- BusinessOS Submission Common runtime

PocketSecretary-specific runtime areas:
- visual-runtime host runtime
- home screen refresh and speech bubble placement
- score-based home summary selection runtime
- secretary wording runtime
- secretary switching from home
- background switching from home
- schedule / todo / memo / library behavior
- travel expense / monthly aggregation
- Enterprise review surfaces
- application button trigger placement
- Deep Link launch runtime for EstimateCreator and NameCardManager
- app-local sync and failure handling

runtime rule:
PocketSecretary binds shared runtime commons
to app-visible surfaces and app-specific plan gating.
