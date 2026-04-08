# ============================================================
# POCKET SECRETARY NOTIFICATION TIER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific tier application
on top of the shared Notification Common.

common reference:
PersonaOS notification common defines:
- basic_notification
- advanced_notification
- grouped summary
- quiet hours
- daily summary
- contextual wording

PocketSecretary-specific tier application:
- free runtime remains on basic notification
- pro and enterprise may enable advanced notification

rules:
- notification wording must not imply authority or approval
- plan-bound runtime availability remains PocketSecretary-specific
