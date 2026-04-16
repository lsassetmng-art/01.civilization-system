# ============================================================
# POCKET SECRETARY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines PocketSecretary-specific user-facing surfaces.

shared common references:
- PersonaOS Secretary Selection Common interface
- PersonaOS Summary Bubble Common interface
- PersonaOS Notification Common interface
- PersonaOS Background Selection Common interface
- BusinessOS Business AI Worker

PocketSecretary-specific interface domains:
- visual-runtime host interface
- dashboard / home screen layout
- left speech bubble placement
- left navigation stack
- right secretary placement
- top-right settings
- Library
- schedule / todo / memo
- consultation surfaces by plan
- travel expense / monthly aggregation
- ERP application draft review surface
- Deep Link launch UI for EstimateCreator and NameCardManager
- install guidance UI for unavailable business apps
- company secretary usage UI
- Enterprise application button UI
- settings and app-local state feedback

interface rule:
Shared interface concepts may be reused,
but PocketSecretary keeps its own screen composition and interaction layout.
