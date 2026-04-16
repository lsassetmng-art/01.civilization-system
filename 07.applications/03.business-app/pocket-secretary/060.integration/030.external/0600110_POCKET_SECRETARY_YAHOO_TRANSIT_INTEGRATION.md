# ============================================================
# POCKET SECRETARY YAHOO TRANSIT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded Yahoo transit guidance integration.

role:
PocketSecretary may launch or bridge to Yahoo transit guidance
as a travel assistance capability.

integration scope:
- route search launch
- departure / arrival / timing context handoff where applicable
- bounded return to PocketSecretary workflow

rules:
- transit guidance integration is assistance only
- transit result is not automatically an ERP or accounting fact
- external route guidance and internal travel expense records remain distinct
