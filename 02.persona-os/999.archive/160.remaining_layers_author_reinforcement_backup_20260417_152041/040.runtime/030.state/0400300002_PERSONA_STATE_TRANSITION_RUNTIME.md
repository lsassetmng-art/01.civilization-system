# ============================================================
# PERSONA STATE TRANSITION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime rules for persona state transition.

runtime_rules:
state transition must be explicit
lifecycle_state and availability_state must remain distinguishable
restricted state transitions must be rejected
all accepted transitions must be auditable

example_transitions:
draft -> validated
validated -> approved
approved -> released
released -> active
active -> paused
paused -> active
active -> suspended
suspended -> retired
retired -> archived
