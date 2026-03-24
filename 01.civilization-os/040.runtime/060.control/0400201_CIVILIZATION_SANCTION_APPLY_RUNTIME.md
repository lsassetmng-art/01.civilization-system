# ============================================================
# CIVILIZATION SANCTION APPLY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for sanction application.

runtime_scope:
- verify sanction approval
- verify enforcement linkage
- apply sanction state
- preserve sanction traceability

trigger_conditions:
- sanction approved
- enforcement case actionable
- sanction lifting approved
- sanction expiry reached

processing_steps:
1 resolve sanction target and case
2 verify approval and actionability
3 apply sanction state transition
4 persist sanction result
5 preserve audit trace

success_condition:
- sanction state updated explicitly and traceably

failure_condition:
- approval missing
- enforcement linkage invalid
- target ineligible
- persistence failure
