# ============================================================
# CIVILIZATION MIGRATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for migration handling.

runtime_scope:
- validate migration target
- validate approval or border basis
- update migration state
- preserve movement traceability

trigger_conditions:
- migration requested
- migration approved
- migration completed
- migration rejected
- migration reversed

processing_steps:
1 resolve migration source and target scopes
2 verify approval or border control basis
3 apply migration state transition
4 persist migration result
5 preserve lineage and audit trace

success_condition:
- migration state updated explicitly

failure_condition:
- invalid source or target scope
- approval basis missing
- persistence failure
