# ============================================================
# CIVILIZATION RECOVERY ALLOCATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for recovery material allocation.

runtime_scope:
- validate recovery target
- validate project and material basis
- update recovery allocation state
- preserve recovery traceability

trigger_conditions:
- recovery requested
- allocation approved
- material delivered
- allocation failed
- allocation reversed

processing_steps:
1 resolve recovery target
2 verify project, material, and approval basis
3 apply recovery state transition
4 persist recovery result
5 preserve audit and recovery trace

success_condition:
- recovery allocation lifecycle updated explicitly

failure_condition:
- invalid target
- project or material basis unresolved
- persistence failure
