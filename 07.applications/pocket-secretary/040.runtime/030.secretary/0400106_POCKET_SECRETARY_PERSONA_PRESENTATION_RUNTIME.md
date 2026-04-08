# ============================================================
# POCKET SECRETARY PERSONA PRESENTATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for Persona-related visual
and interaction presentation within PocketSecretary.

runtime areas:
- character state application
- emotion/view switching
- local presentation refresh
- fallback rendering behavior
- secretary interaction presentation

rules:
- Persona rendering must remain presentation-oriented
- rendering failure must not imply authority failure
- presentation state must not redefine permission logic
