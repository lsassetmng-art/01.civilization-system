# ============================================================
# PERSONA GROWTH FLOW OVERVIEW
# ============================================================

status: canonical
layer: flow
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona growth flows.

summary:
Growth flows cover request receipt,
validation,
deduplication,
applyability check,
truth update,
history recording,
and canonical result emission.

scope:
request intake
deduplication
policy gating
truth update flow
result event flow

boundary:
Growth flow may begin from external request,
but final apply remains inside PersonaOS truth authority.
