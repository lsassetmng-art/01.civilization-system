# ============================================================
# CIVILIZATION POLICY IMPACT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for policy-impact estimation.

runtime_scope:
- validate estimate target
- validate source policy and lineage
- update estimate state
- preserve decision-support traceability

trigger_conditions:
- policy estimate requested
- policy revised
- scenario changed
- estimate invalidated

processing_steps:
1 resolve estimate target and source policy
2 verify scenario, baseline, and lineage basis
3 apply estimate state transition
4 persist estimate result
5 preserve audit and planning trace

success_condition:
- policy-impact estimate updated explicitly

failure_condition:
- invalid target
- source policy or lineage unresolved
- persistence failure
