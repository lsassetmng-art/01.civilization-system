# ============================================================
# CIVILIZATION INVESTIGATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for investigation handling.

runtime_scope:
- validate case target
- validate initiating basis
- update investigation state
- preserve investigative traceability

trigger_conditions:
- case opened
- case assigned
- evidence review recorded
- case resolved or dismissed

processing_steps:
1 resolve investigation target
2 verify initiating basis and assignment scope
3 apply investigation state transition
4 persist case result
5 preserve audit and investigative trace

success_condition:
- investigation lifecycle updated explicitly

failure_condition:
- invalid target
- initiating basis unresolved
- persistence failure
