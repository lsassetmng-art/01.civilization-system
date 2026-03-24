# ============================================================
# CIVILIZATION MODEL STATE RULE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define canonical state and status rules for CivilizationOS models.

rules:
- stateful models must declare status or state semantics explicitly
- status enums must not be implicit
- terminal states must be distinguishable from retryable states
- reflected state must not be confused with canonical truth state

required_when_applicable:
- status_enum
- state_transition
- terminal_state_examples
- retryable_state_examples
