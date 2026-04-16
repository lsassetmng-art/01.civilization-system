# ============================================================
# POCKET SECRETARY HOME SUMMARY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home summary runtime
based on the shared Summary Bubble Common runtime.

common reference:
PersonaOS secretary interaction common runtime defines:
- candidate summary source collection
- urgency evaluation
- dominant summary selection
- summary rendering

PocketSecretary-specific application:
- selected summary is rendered in the home speech bubble area
- tap may route to PocketSecretary-specific feature surfaces

rules:
- summary selection must remain state-grounded
- dominant summary selection must not fabricate urgency
