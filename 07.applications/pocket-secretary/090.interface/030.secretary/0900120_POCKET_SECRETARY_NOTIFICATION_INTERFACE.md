# ============================================================
# POCKET SECRETARY NOTIFICATION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific notification interface
based on the shared Notification Common interface.

common reference:
PersonaOS notification common interface defines:
- readable reminder presentation
- grouped summary presentation
- daily summary presentation
- notification control visibility

PocketSecretary-specific interface:
basic notification UI:
- schedule reminder
- todo due reminder
- simple local reminder

advanced notification UI:
- grouped summary notification
- priority-marked notification
- re-notification visibility
- state-linked notification
- contextual wording
- secretary-style wording

rules:
- free must expose only basic notification behavior
- pro and enterprise may expose advanced notification behavior
- notification UI must remain honest about actual state
