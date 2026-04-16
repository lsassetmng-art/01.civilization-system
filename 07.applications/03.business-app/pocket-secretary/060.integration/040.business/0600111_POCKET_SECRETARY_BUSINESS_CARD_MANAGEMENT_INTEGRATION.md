# ============================================================
# POCKET SECRETARY BUSINESS CARD MANAGEMENT INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded business card management integration.

role:
PocketSecretary may connect to external or companion business card
management capability for enterprise workflows.

integration scope:
- business card app launch
- bounded business card context handoff
- return to PocketSecretary workflow where supported

rules:
- PocketSecretary need not own the full business card source-of-truth
- integration success does not equal card record update success
- business card integration remains enterprise-bounded
