# ============================================================
# CIVILIZATION RESEARCH ETHICS OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for research ethics and authorization.

operation_steps:
1 inspect target and ethics basis
2 invoke ethics runtime
3 persist ethics outcome
4 preserve ethics and audit trace

success_condition:
- research ethics lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
