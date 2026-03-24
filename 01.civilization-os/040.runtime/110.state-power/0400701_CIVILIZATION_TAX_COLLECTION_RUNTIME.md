# ============================================================
# CIVILIZATION TAX COLLECTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for tax collection.

runtime_scope:
- validate assessment target
- enforce idempotent collection
- persist collection result
- preserve fiscal traceability

trigger_conditions:
- collection requested
- collection posted
- reversal approved
- collection failure reported

processing_steps:
1 resolve assessment target
2 verify collection_ref idempotency basis
3 apply collection state transition
4 persist collection result
5 preserve fiscal lineage and audit trace

success_condition:
- collection recorded once effectively

failure_condition:
- invalid assessment target
- duplicate effective collection
- persistence failure
