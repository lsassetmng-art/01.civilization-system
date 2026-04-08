# ============================================================
# POCKET SECRETARY NOTIFICATION RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification rule usage
based on the shared Notification Common model.

common reference:
PersonaOS notification common defines:
- quiet hours
- daily summary
- grouped summary
- re-notification control

PocketSecretary-specific usage:
- notification rules are applied to PocketSecretary surfaces
- home and secretary-facing behavior may reflect these controls

rules:
- quiet hours and daily summary remain distinct controls
- notification control and actual task state remain distinct
