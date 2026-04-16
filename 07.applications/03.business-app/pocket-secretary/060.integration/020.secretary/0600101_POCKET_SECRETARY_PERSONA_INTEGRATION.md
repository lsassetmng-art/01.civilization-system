# ============================================================
# POCKET SECRETARY PERSONA INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the bounded integration between PocketSecretary
and Persona-related upstream systems.

integration purposes:
- obtain bounded Persona-linked presentation state
- request presentation-oriented data where permitted
- support secretary-like interaction surfaces
- apply bounded local presentation refresh

rules:
- PocketSecretary is not the source-of-truth for Persona authority
- Persona-linked state used locally must remain bounded
- presentation data and authority data must remain distinguishable
- failure of Persona presentation integration must degrade safely
