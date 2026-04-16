# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of BusinessOS dependency boundaries.

implementation_rules:
- keep BusinessOS boundary behind gateway interfaces
- do not leak BusinessOS transport concerns into local screen state
- local use cases should distinguish mediated calls from purely local actions
- failure in BusinessOS-mediated paths should surface as sync/integration state,
  not as ownership confusion
