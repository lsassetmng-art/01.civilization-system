# ============================================================
# CIVILIZATION SANCTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for sanctions.

operation_steps:
1 inspect sanction target and approval linkage
2 invoke sanction apply runtime
3 persist sanction result
4 preserve lifecycle traceability

success_condition:
- sanction applied once under explicit authority

failure_condition:
- approval missing
- case linkage invalid
- runtime or persistence failure
