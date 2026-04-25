# ============================================================
# PERSONA TO EXTERNAL USAGE RESULT SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define how PersonaOS sends usage-related sync results
to external OS domains.

flow_steps:
1 Persona usage result build runtime detects trigger
2 usage result contract is materialized with source version
3 Persona external sync outbox row is created
4 outbox runtime dispatches contract to target OS
5 external OS receives result through inbox path
6 dispatch outcome is persisted

result_examples:
- usage permission changed
- access state changed
- release validity changed
- binding state changed
