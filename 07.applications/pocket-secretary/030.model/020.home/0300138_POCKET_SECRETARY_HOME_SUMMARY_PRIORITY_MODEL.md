# ============================================================
# POCKET SECRETARY HOME SUMMARY PRIORITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific dominant summary usage
based on the shared Summary Priority Selection Common model.

common reference:
PersonaOS secretary interaction common defines the shared
dominant summary selection structure.

PocketSecretary priority emphasis:
- next schedule urgency
- due todo urgency
- pending notification summary
- travel expense reminder
- secretary guidance

rules:
- only one dominant summary item should be selected at a time
- selected summary and underlying source remain distinguishable
