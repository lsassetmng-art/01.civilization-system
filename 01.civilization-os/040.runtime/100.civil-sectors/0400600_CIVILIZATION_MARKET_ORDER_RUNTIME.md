# ============================================================
# CIVILIZATION MARKET ORDER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for market order handling.

runtime_scope:
- validate order identity
- validate listing or market scope
- enforce idempotent order registration
- persist order state

trigger_conditions:
- market order submitted
- order cancellation requested
- order fill update received

processing_steps:
1 resolve market scope and asset target
2 verify order_ref idempotency basis
3 validate order side, quantity, and price basis
4 persist order state transition
5 preserve audit trace

success_condition:
- order registered once effectively

failure_condition:
- invalid market target
- duplicate effective order
- persistence failure
