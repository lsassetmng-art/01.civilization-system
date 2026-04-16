# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific notification control interface
based on the shared Notification Common interface.

common reference:
PersonaOS notification common interface defines:
- notification control visibility
- understandable advanced behavior distinction

required UI elements:
- basic vs advanced notification distinction
- quiet hours control
- daily summary control
- grouped summary control
- re-notification control where applicable

rules:
- notification control must remain understandable
- unavailable advanced controls must respect plan boundary
