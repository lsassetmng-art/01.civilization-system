# ============================================================
# PERSONA TO EXTERNAL TRUST SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define how PersonaOS sends trust-related sync results
to external OS domains.

flow_steps:
1 Persona trust result build runtime detects trigger
2 trust result contract is materialized with source version
3 Persona external sync outbox row is created
4 outbox runtime dispatches contract to target OS
5 external OS receives result through inbox path
6 dispatch outcome is persisted

result_examples:
- trust score changed
- trust level changed
- safety score changed
- stability score changed
- consistency score changed

rule:
Trust flow remains separate from usage result flow.
