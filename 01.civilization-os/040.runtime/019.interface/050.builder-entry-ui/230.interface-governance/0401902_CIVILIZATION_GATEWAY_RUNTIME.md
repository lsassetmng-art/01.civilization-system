# ============================================================
# CIVILIZATION GATEWAY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for external gateway dispatch and consume.

runtime_scope:
- validate gateway target
- validate contract compatibility
- enforce idempotent dispatch or consume
- preserve gateway traceability

trigger_conditions:
- dispatch requested
- consume requested
- retry initiated
- reversal requested
- failure cleared

processing_steps:
1 resolve gateway target and contract version
2 verify compatibility and permission basis
3 verify idempotency basis
4 apply dispatch or consume state transition
5 persist gateway result
6 preserve audit and boundary trace

success_condition:
- gateway dispatch or consume handled once effectively

failure_condition:
- invalid target
- incompatible contract
- duplicate effective action
- persistence failure
