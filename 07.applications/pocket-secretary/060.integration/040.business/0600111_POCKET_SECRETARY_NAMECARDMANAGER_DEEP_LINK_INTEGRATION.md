# ============================================================
# POCKET SECRETARY NAMECARDMANAGER DEEP LINK INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the Deep Link integration boundary
between PocketSecretary and NameCardManager.

NameCardManager formal role:
NameCardManager is a BusinessOS-first business-card management app.
BusinessOS is the source of truth.
Local storage is an offline work area and cache.

authentication inheritance:
PocketSecretary hands off authenticated BusinessOS context.
NameCardManager should continue on the inherited authenticated context
without normal re-login.

PocketSecretary integration role:
- invoke NameCardManager Deep Link
- pass bounded launch parameters only
- hand off authenticated BusinessOS context
- show install guidance when NameCardManager is unavailable

recommended parameters:
- mode
- company_context_id
- keyword
- card_id
- handoff_source

rules:
- launch remains explicit
- launch result and business result remain distinct
- inherited authentication does not replace target-side authorization checks
