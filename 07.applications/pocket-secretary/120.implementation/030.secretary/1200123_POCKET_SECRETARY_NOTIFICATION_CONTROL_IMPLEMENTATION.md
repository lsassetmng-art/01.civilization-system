# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification control implementation
based on the shared Notification Common.

common reference:
PersonaOS notification common defines:
- quiet hours
- grouped summary
- daily summary
- advisory notification control intent

PocketSecretary-specific implementation directions:
- implement quiet hours
- implement grouped summary notification
- implement daily summary behavior
- implement bounded re-notification timing
- keep advanced controls plan-bounded

rules:
- control implementation must reduce noise rather than increase it
- notification behavior must remain state-honest
