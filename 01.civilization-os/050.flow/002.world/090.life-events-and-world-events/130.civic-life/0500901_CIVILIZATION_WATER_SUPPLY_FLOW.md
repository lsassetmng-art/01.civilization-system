# ============================================================
# CIVILIZATION WATER SUPPLY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical water supply flow.

flow_steps:
1 water supply trigger occurs
2 water supply runtime validates target and lineage
3 supply and quality state are persisted
4 disruption or restoration paths follow if needed
5 traceability remains preserved
