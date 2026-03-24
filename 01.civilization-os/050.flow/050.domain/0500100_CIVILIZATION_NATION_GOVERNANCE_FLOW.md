# ============================================================
# CIVILIZATION NATION GOVERNANCE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical nation governance flow.

flow_steps:
1 governance action is proposed
2 approval gate evaluates requirement
3 decision record is created
4 nation state update runtime executes if approved
5 audit trace is appended

flow_rule:
Nation governance must remain approval-bound and traceable.
