# ============================================================
# CIVILIZATION MISSION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for diplomatic missions and envoy handling.

runtime_scope:
- validate mission target
- validate accreditation and authority basis
- update mission or envoy state
- preserve diplomatic traceability

trigger_conditions:
- mission approved
- envoy accredited
- mission activated
- envoy recalled
- mission withdrawn

processing_steps:
1 resolve mission or envoy target
2 verify accreditation and authority basis
3 apply diplomatic mission state transition
4 persist mission result
5 preserve audit and diplomatic trace

success_condition:
- mission or envoy lifecycle updated explicitly

failure_condition:
- invalid target
- accreditation or authority basis unresolved
- persistence failure
