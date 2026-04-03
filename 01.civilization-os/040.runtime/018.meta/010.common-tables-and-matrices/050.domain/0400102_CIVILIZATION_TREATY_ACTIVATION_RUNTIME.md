# ============================================================
# CIVILIZATION TREATY ACTIVATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for treaty activation, suspension, supersession, and revocation.

runtime_scope:
- validate treaty version
- validate party scope
- update treaty status
- preserve treaty traceability

input_models:
- CIVILIZATION_TREATY_MODEL
- CIVILIZATION_DECISION_RECORD_MODEL

trigger_conditions:
- treaty approved
- treaty suspended
- treaty superseded
- treaty revoked
- treaty expired

processing_steps:
1 resolve target treaty
2 validate treaty version and party scope
3 verify governance basis
4 update treaty status
5 persist treaty and audit trace

success_condition:
- treaty state updated with explicit governance basis

failure_condition:
- invalid treaty target
- missing governance basis
- persistence failure
