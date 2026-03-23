# ============================================================
# PERSONA TO BUSINESS USAGE RESULT SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona usage-related sync results into BusinessOS.

flow_steps:
1 PersonaOS emits usage result contract
2 BusinessOS receives event into sync inbox
3 business sync consumer routes event to usage consume runtime
4 access / license / release / binding refs are updated
5 business Persona availability is recalculated

result_examples:
- usage permission granted
- access state changed
- release validity changed
- binding state changed
