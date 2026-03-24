# ============================================================
# CIVILIZATION WORLD AGGREGATE REBUILD OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for world aggregate rebuild.

operation_scope:
- inspect rebuild target
- verify lineage and source version
- invoke rebuild runtime
- persist rebuilt aggregate

operation_steps:
1 resolve world aggregate target
2 verify lineage and source state version
3 invoke world aggregate rebuild runtime
4 persist rebuilt aggregate state
5 preserve rebuild traceability

success_condition:
- world aggregate rebuilt safely with lineage

failure_condition:
- lineage missing
- rebuild failure
- persistence failure
