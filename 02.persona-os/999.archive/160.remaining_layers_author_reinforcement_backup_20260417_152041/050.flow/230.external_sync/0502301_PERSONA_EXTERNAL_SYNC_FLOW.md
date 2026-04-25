# ============================================================
# PERSONA EXTERNAL SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external sync flow.

flow_steps:
1 sync intake or dispatch action occurs
2 contract, target, and payload basis are verified
3 sync runtime updates state
4 duplicate suppression or failure path may follow
5 sync trace remains preserved
