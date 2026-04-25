# ============================================================
# PERSONA STATE INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona state interfaces.

summary:
State interfaces define explicit requests,
responses,
and result contracts
for reading current state
and applying permitted state transitions.

interface_groups:
state read
state transition request
transition validation
transition result
transition rejection

interface_rules:
state interfaces must expose explicit transition intent
state interfaces must distinguish lifecycle transition
from availability change and release-state change
state interfaces must reject forbidden transition attempts explicitly
state interfaces must preserve transition traceability

boundary:
State interfaces do not mutate identity as generic state.
State interfaces do not treat visual state as lifecycle state.
State interfaces do not replace policy validation.
