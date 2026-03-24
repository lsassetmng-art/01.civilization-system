# ============================================================
# LIFE FAILURE RETRY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life failure retry flow.

flow_steps:
1 recoverable or terminal failure occurs
2 retry and cutoff basis are verified
3 failure-retry runtime updates state
4 restoration or dead-letter path may follow
5 failure trace remains preserved
