# ============================================================
# BUSINESS RETRY DEAD LETTER FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry and dead-letter flow for BusinessOS.

flow_steps:
1 recoverable or terminal failure occurs
2 retry and cutoff basis are verified
3 retry-dead-letter runtime updates state
4 restoration or quarantine path may follow
5 failure trace remains preserved
