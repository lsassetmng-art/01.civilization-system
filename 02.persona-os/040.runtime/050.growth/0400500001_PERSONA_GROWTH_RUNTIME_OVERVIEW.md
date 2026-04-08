# ============================================================
# PERSONA GROWTH RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of persona growth application.

summary:
Growth runtime validates requests,
deduplicates eligible input,
applies final truth mutation,
records history,
and emits canonical result state.

scope:
request validation
deduplication
applyability check
truth update
history recording
result emission

boundary:
Runtime accepts requests from outside,
but only PersonaOS decides final growth truth mutation.
