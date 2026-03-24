# ============================================================
# CIVILIZATION SCORE REBUILD FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical score rebuild flow.

flow_steps:
1 stale or rebuild-required score aggregate is detected
2 source lineage is verified
3 score aggregate rebuild runtime executes
4 rebuilt score is persisted
5 aggregate status becomes current, stale, or invalid
