# ============================================================
# POCKET SECRETARY ESTIMATECREATOR DEEP LINK ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches EstimateCreator
through Deep Link.

EstimateCreator definition:
EstimateCreator is a BusinessOS rough-estimate and sales-support app.

EstimateCreator owns:
- sales memo
- meeting memo
- rough estimate
- app-internal sharing
- ERP publication request through shared BusinessOS ERP publication capability
- online sync through shared BusinessOS sync common capability

authentication inheritance:
Deep Link launch inherits the caller's authenticated BusinessOS context.
Normal re-login is not required on launch.

inherited context includes:
- authenticated user identity
- company context
- BusinessOS authenticated session context
- handoff source

not inherited:
- unsaved editor state
- approval completed state
- submission success state

PocketSecretary role:
- present launch entry
- build bounded launch parameters
- invoke Deep Link explicitly
- hand off authenticated BusinessOS context
- show install guidance when the app is unavailable

PocketSecretary non-role:
- estimate authoring ownership
- order authoring ownership
- direct ERP submission from PocketSecretary
- EstimateCreator sync ownership

recommended entry modes:
- estimate_entry
- sales_memo_entry
- meeting_memo_entry
- generic_business_entry

bounded launch parameters may include:
- mode
- company_context_id
- customer_reference
- handoff_source

rules:
- PocketSecretary does not author EstimateCreator business content
- Deep Link launch success does not equal business success
- app unavailability must show install guidance
- inherited authentication does not replace target-side authorization checks
