# ============================================================
# CIVILIZATION SYNC CONSUME FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical inbound synchronization consume flow.

flow_steps:
1 inbox event arrives
2 contract validation classifies event
3 idempotency basis is checked
4 event is consumed or rejected
5 reflection or coordination result is persisted
6 audit trace is recorded

duplicate_rule:
Duplicate source identity must result in safe duplicate handling,
not duplicate effective consume.
