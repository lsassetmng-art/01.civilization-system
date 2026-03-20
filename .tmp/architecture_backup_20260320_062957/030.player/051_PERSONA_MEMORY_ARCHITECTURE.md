# ============================================================
# PERSONA MEMORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Persona memory stores player-relevant historical experiences.

memory_types:
- event_memory
- relationship_memory
- success_failure_memory
- identity_memory

rules:
- memory entries are append-oriented
- corrections require explicit audit trail
- memory affects context, not direct forced behavior

final_rule:
Memory is historical input, not hidden control logic.
