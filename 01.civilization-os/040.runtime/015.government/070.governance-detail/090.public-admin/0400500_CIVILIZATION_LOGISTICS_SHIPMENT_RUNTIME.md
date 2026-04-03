# ============================================================
# CIVILIZATION LOGISTICS SHIPMENT RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for logistics shipment handling.

runtime_scope:
- validate shipment target
- validate route legality
- enforce idempotent shipment registration
- persist shipment state

trigger_conditions:
- shipment requested
- route approved
- shipment dispatched
- delivery or failure reported

processing_steps:
1 resolve shipment target and route
2 verify legal basis and idempotency basis
3 apply shipment state transition
4 persist shipment result
5 preserve lineage and audit trace

success_condition:
- shipment state updated once effectively

failure_condition:
- invalid route
- duplicate effective shipment
- persistence failure
