# ============================================================
# POCKET SECRETARY ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
This layer defines the PocketSecretary-specific structural architecture.

PocketSecretary is an application-layer client.
It consumes shared common frameworks where appropriate,
and adds app-specific structure where necessary.

shared common references:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common
- BusinessOS Business AI Worker

PocketSecretary-specific structural domains:
- visual-runtime host domain
- home screen architecture
- plan boundary
- Library
- schedule / todo / memo
- travel expense / monthly aggregation
- ERP application draft review surfaces
- enterprise application button placement
- Deep Link launch structure for EstimateCreator and NameCardManager
- home summary priority structure
- secretary wording dictionary structure
- company secretary consumption boundary
- initial secretary cast
- settings and app-specific navigation

what belongs here:
- PocketSecretary app structure
- app-specific placement and domain ownership
- app-specific binding of shared commons

what does not belong here:
- EstimateCreator authoring ownership
- NameCardManager authoring ownership
- BusinessOS company secretary employment truth
- shared common semantics already defined in PersonaOS or BusinessOS
- deep implementation detail
