# ============================================================
# PERSONA BUSINESS ACCESS SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define how Persona access, license, release, and binding state
are synchronized into BusinessOS.

flow_steps:
1 PersonaOS emits usage-domain sync result
2 BusinessOS receives event into inbox
3 Business sync consumer classifies usage event
4 usage permission consume runtime reflects state
5 business-facing Persona availability is recalculated

notes:
This flow covers permission-side availability,
not trust-side exposure strength.
