# ============================================================
# CIVILIZATION APPROVAL GATE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the runtime that gates approval-required actions.

runtime_scope:
- detect approval-required action
- materialize approval request
- block or allow downstream execution
- persist gate outcome

trigger_conditions:
- privileged action requested
- policy marks action as approval-required
- replay action requires approval
- terminal failure repair action requires approval

processing_steps:
1 detect approval-required action
2 build approval request
3 persist request state
4 block downstream execution until decision exists
5 release execution only on approved decision
6 emit audit trace

success_condition:
- approval-required action is gated correctly
- downstream execution does not bypass decision state

failure_condition:
- approval request not persisted
- gate classification ambiguous
- downstream execution leaked without approval
