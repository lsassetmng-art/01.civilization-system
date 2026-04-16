# ============================================================
# POCKET SECRETARY ENTERPRISE APPLICATION BUTTON ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific Enterprise application-button placement
on top of the shared Business Submission Common.

common reference:
BusinessOS submission common defines that
first-time submission requires explicit user action.

PocketSecretary-specific application:
Enterprise provides the explicit application button
on enterprise review surfaces for:
- ERP application draft

rules:
- the button is the PocketSecretary UI trigger for explicit submission
- no automatic submission path is allowed
- draft completion alone must not trigger submission
- button placement and visibility are app-specific here
