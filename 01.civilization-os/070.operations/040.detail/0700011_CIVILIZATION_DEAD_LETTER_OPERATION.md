# ============================================================
# CIVILIZATION DEAD LETTER OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational handling of dead-lettered units.

operation_scope:
- classify terminal failure
- mark unit dead-lettered
- preserve traceability
- expose operator review path

operation_steps:
1 confirm terminal failure classification
2 mark sync unit dead-lettered
3 persist dead-letter timestamp and failure reason
4 preserve correlation and causation traceability
5 expose operator-visible review or repair path

success_condition:
- dead-letter state persisted
- unit excluded from infinite retry loops
- review path remains visible

failure_condition:
- terminal classification not persisted
- unit remains retry-loop eligible incorrectly
