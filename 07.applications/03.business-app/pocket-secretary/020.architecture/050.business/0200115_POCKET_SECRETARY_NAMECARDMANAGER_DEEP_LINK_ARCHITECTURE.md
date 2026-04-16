# ============================================================
# POCKET SECRETARY NAMECARDMANAGER DEEP LINK ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary launches NameCardManager
through Deep Link.

NameCardManager definition:
NameCardManager is a BusinessOS-first business-card management app.
BusinessOS is the source of truth.
Local storage is an offline work area and cache.

NameCardManager manages:
- business-card base information
- person understanding
- responsibility range
- business history
- relationship visibility
- audit / history / approval events

NameCardManager sharing/publication:
- app-internal sharing is explicit only
- ERP-wide publication is explicit only
- ERP-wide publication uses shared BusinessOS ERP publication capability
- NameCardManager does not directly send to ERP

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

recommended entry modes:
- search
- new
- detail
- related_people
- related_cases
- generic_entry

bounded launch parameters may include:
- mode
- company_context_id
- keyword
- card_id
- handoff_source

rules:
- PocketSecretary does not own NameCardManager authoring semantics
- Deep Link launch success does not equal business success
- app unavailability must show install guidance
- inherited authentication does not replace target-side authorization checks
