# ============================================================
# CIVILIZATION SCORE REBUILD OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for score aggregate rebuild.

operation_scope:
- inspect rebuild target
- verify source lineage
- invoke rebuild runtime
- persist rebuilt result

operation_steps:
1 resolve score aggregate target
2 verify source lineage and version
3 invoke score aggregate rebuild runtime
4 persist rebuilt score state
5 preserve audit trace when needed

success_condition:
- score aggregate rebuilt with lineage preserved

failure_condition:
- missing lineage
- rebuild failure
- persistence failure
