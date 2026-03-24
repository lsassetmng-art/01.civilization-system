# ============================================================
# CIVILIZATION METRIC PUBLICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for metric publication.

runtime_scope:
- resolve publishable metric target
- verify source lineage and state version
- materialize publication payload
- persist publication trace

trigger_conditions:
- aggregate marked current
- publication requested
- publication repair requested
- superseding publication required

processing_steps:
1 resolve publishable metric target
2 verify lineage and source version
3 build publication payload
4 persist publication record
5 preserve audit trace and publication lineage

success_condition:
- metric publication record persisted with lineage

failure_condition:
- lineage missing
- invalid publication target
- persistence failure
