# ============================================================
# POCKET SECRETARY NOTIFICATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines PocketSecretary-specific application of the shared Notification Common.

common reference:
PersonaOS notification common defines:
- notification tier common
- notification control common
- quiet hours common
- grouped summary notification common
- daily summary notification common
- contextual notification wording common

PocketSecretary-specific tier application:
- free: basic notification
- pro and enterprise: advanced notification

PocketSecretary-specific usage:
- notification may feed home summary selection
- app-specific plan gating is defined here
- PocketSecretary binds shared notification behavior
  to its secretary-facing home and feature surfaces

rules:
- notification architecture must preserve state honesty
- notification must not imply approval or business acceptance
