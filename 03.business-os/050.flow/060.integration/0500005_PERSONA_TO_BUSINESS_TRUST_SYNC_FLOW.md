# ============================================================
# PERSONA TO BUSINESS TRUST SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona trust-related sync results into BusinessOS.

flow_steps:
1 PersonaOS emits trust result contract
2 BusinessOS receives event into sync inbox
3 business sync consumer routes event to trust consume runtime
4 trust ref is updated
5 business-side Persona exposure gates are recalculated

result_examples:
- trust score changed
- trust level changed
- safety score changed
- stability score changed
- consistency score changed

rule:
Trust flow does not replace permission flow.
Both must be evaluated together.
