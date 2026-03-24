# ============================================================
# CIVILIZATION INSPECTION DIPLOMACY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for inspection requests, missions, and incidents.

runtime_scope:
- validate inspection target
- validate mandate and host basis
- update inspection or incident state
- preserve diplomatic compliance traceability

trigger_conditions:
- inspection requested
- inspection approved
- mission activated
- incident recorded
- mission concluded

processing_steps:
1 resolve inspection or incident target
2 verify mandate, host, and access basis
3 apply inspection-related state transition
4 persist inspection result
5 preserve audit and diplomatic compliance trace

success_condition:
- inspection or incident lifecycle updated explicitly

failure_condition:
- invalid target
- mandate, host, or access basis unresolved
- persistence failure
