# ============================================================
# POCKET SECRETARY NOTIFICATION PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification profile usage
based on the shared Notification Common model.

common reference:
PersonaOS notification common defines the shared structure of:
- notification tier
- grouped summary capability
- priority notification capability
- re-notification capability
- contextual notification capability
- secretary wording capability

PocketSecretary-specific usage:
- free is limited to basic notification capability
- pro and enterprise may enable advanced notification features
- home summary selection may consume notification state

rules:
- capability and actual delivery result remain distinct
- app-specific plan gating remains PocketSecretary-specific
