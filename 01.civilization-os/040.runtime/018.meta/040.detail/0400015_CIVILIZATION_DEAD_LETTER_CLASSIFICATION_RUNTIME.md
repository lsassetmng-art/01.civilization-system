# ============================================================
# CIVILIZATION DEAD LETTER CLASSIFICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for terminal failure classification.

runtime_scope:
- inspect failed unit
- classify transient vs terminal
- persist dead-letter classification
- hand off to dead-letter operation

trigger_conditions:
- retry budget exhausted
- unrecoverable incompatibility detected
- unauthorized target confirmed
- invalid payload confirmed terminal

processing_steps:
1 inspect failed unit and trace context
2 classify transient or terminal
3 if terminal, create dead-letter record
4 route to dead-letter operation
5 preserve replay visibility

success_condition:
- terminal failure classified explicitly
- dead-letter path made visible

failure_condition:
- failure remains ambiguous
- dead-letter record not persisted
- replay visibility not preserved
