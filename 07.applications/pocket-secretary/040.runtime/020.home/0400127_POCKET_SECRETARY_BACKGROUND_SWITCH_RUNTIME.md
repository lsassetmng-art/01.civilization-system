# ============================================================
# POCKET SECRETARY BACKGROUND SWITCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific background switching
based on the shared Background Common runtime.

common reference:
PersonaOS background common runtime defines:
- selection surface open
- available background display
- explicit selection
- preference persistence
- render refresh

PocketSecretary-specific application:
- switching starts from home background tap
- selected background is applied to the PocketSecretary home surface

rules:
- background switching is explicit
- background switching affects presentation only
- background switching must not alter authority or plan state
