# ============================================================
# GAME DEVICE DELIVERY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for device registration, download grant,
and install license handling.

runtime_scope:
- validate device-delivery target
- validate device, entitlement, and package basis
- update device-delivery lifecycle state
- preserve device-delivery traceability

trigger_conditions:
- device registered
- download requested
- grant approved
- install license approved
- license revoked

processing_steps:
1 resolve device, grant, or license target
2 verify device, entitlement, package, and attestation basis
3 apply device-delivery state transition
4 persist device-delivery result
5 preserve audit and delivery trace

state_transition:
- draft -> registered
- registered -> suspended
- registered -> revoked
- draft -> approved
- approved -> active
- active -> revoked
- active -> expired

success_condition:
- game device-delivery lifecycle updated explicitly

failure_condition:
- invalid target
- device, entitlement, package, or attestation basis unresolved
- persistence failure
