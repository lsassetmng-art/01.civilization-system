# ============================================================
# CIVILIZATION MIGRATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for migration.

operation_steps:
1 inspect migration source and target scope
2 invoke migration runtime
3 persist migration outcome
4 preserve movement and audit trace

success_condition:
- migration lifecycle handled explicitly

failure_condition:
- invalid scope
- approval or border basis missing
- runtime or persistence failure
