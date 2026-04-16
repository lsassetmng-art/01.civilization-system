# ============================================================
# POCKET SECRETARY ESTIMATECREATOR DEEP LINK INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the Deep Link integration boundary
between PocketSecretary and EstimateCreator.

EstimateCreator formal role:
EstimateCreator is a BusinessOS rough-estimate and sales-support app.
It uses shared common capability for:
- app-internal sharing
- ERP publication request
- online sync

authentication inheritance:
PocketSecretary hands off authenticated BusinessOS context.
EstimateCreator should continue on the inherited authenticated context
without normal re-login.

PocketSecretary integration role:
- invoke EstimateCreator Deep Link
- pass bounded launch parameters only
- hand off authenticated BusinessOS context
- show install guidance when EstimateCreator is unavailable

recommended parameters:
- mode
- company_context_id
- customer_reference
- handoff_source

rules:
- PocketSecretary does not directly invoke ERP publication through this boundary
- Deep Link launch result and business result remain distinct
- inherited authentication does not replace target-side authorization checks
