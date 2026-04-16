# ============================================================
# POCKET SECRETARY SECRETARY SWITCH RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific secretary switching
based on the shared Secretary Switch Common runtime.

common reference:
PersonaOS secretary interaction common runtime defines
the common secretary switch sequence.

PocketSecretary-specific application:
- switch may start from home-character tap
- switch refreshes home render and summary style

rules:
- switching is explicit
- switching affects presentation and guidance style only
- switching must not bypass plan boundary
