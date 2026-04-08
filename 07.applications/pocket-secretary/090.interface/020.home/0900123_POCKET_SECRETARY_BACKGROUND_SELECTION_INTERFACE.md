# ============================================================
# POCKET SECRETARY BACKGROUND SELECTION INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the PocketSecretary-specific background selection interface
based on the shared Background Selection Common interface.

common reference:
PersonaOS background common interface defines:
- background list or selection sheet
- current background highlight
- preview
- explicit selection behavior

PocketSecretary-specific application:
- background selection opens from home background tap
- selected background is previewed for the home surface

rules:
- background switching must remain explicit
- background selection remains presentation-only
