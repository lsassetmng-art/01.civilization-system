# ============================================================
# CIVILIZATION EVENT PROPAGATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civilization event propagation flow.

flow_steps:
1 canonical or approved reflected event is emitted
2 event registration runtime validates and persists event
3 downstream sync, aggregate, or audit paths are triggered if applicable
4 event lineage remains traceable

event_rule:
Event propagation must not silently transfer truth ownership.
